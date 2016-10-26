$(document).ready(function() {
	var total = 0;
	var numRight = 0;

	$(".practice-btn").click(function() {
		$("#classes").hide();
		$("#gamezone").show();
		updateHeader("Famous People");
		displayNextQuestion();
	});

	$("#gamezone").on("click", ".option", function() {
		var button = $(this);

		if (button.text() == "Walt" || button.text() == "True") {
			displayRightButton(button);
			disableButton(button);
			increaseTotal();
			increaseNumRight();
			$("#num-correct").html(numRight);
			$("#total-attempts").html(total);

			$.each(button.siblings(), function() {
				disableButton($(this));
			});

			setTimeout(displayNextQuestion, 700);
		} else {
			disableButton(button);
			displayWrongButton(button);
			increaseTotal();
			$("#total-attempts").html(total);
		}
	});

	function displayNextQuestion() {
		var nextQuestionType = getNextQuestionType();

		$("#gamezone").empty();

		if (nextQuestionType == "multiple choice") {
			createMultipleChoice();
		} else if (nextQuestionType == "true or false") {
			createTrueOrFalse();
		} else {
			alert("Error in displayNextQuestion() fn");
		}
	}

	function getNextQuestionType() {
		var questionTypes = [
			"multiple choice",
			"true or false"
		];

		return questionTypes[randomNum(0, 1)];
	}

	function createTrueOrFalse() {
		var gamezone = $("#gamezone");
		var row = createElem("div", "row");
		var firstCol = createElem("div", "col-sm-6");
		var secondCol = createElem("div", "col-sm-6");
		var directionsContainer = createElem("p");
		var randomPerson = "Danelson";
		var correctPerson = "Walt";
		var optionsArray = [randomPerson, correctPerson];
		var directions = "Directions: Is this person Walt?";
										//  + optionsArray[randomNum(0, 1)] + "?";
		var firstOption = createOption("primary", "True");
		var secondOption = createOption("primary", "False");

		row.append(firstCol, secondCol);
		firstCol.append(createImage());
		directionsContainer.append(directions);
		secondCol.append(
			directionsContainer,
			firstOption,
			secondOption
		);
		gamezone.append(row);
	}

	function increaseTotal() {
		total += 1;
	}

	function increaseNumRight() {
		numRight += 1;
	}

	function displayWrongButton(button) {
		button.removeClass("btn-primary").addClass("btn-danger");
		button.append(" &#10006;");
	}

	function displayRightButton(button) {
		button.removeClass("btn-primary").addClass("btn-success");
		button.append(" &#10004;");
	}

	function disableButton(button) {
		button.prop("disabled", true);
	}

	function createMultipleChoice() {
		var gamezone = $("#gamezone");
		var row = createElem("div", "row");
		var firstCol = createElem("div", "col-sm-6");
		var secondCol = createElem("div", "col-sm-6");
		var directionsContainer = createElem("p");
		var directions = "Directions: Click the correct name."
		var firstOption = createOption("primary", "Walt");
		var secondOption = createOption("primary", "Elon");
		var thirdOption = createOption("primary", "Steve");
		var fourthOption = createOption("primary", "Danelson");

		row.append(firstCol, secondCol);
		firstCol.append(createImage());
		directionsContainer.append(directions);
		secondCol.append(
			directionsContainer,
			firstOption,
			secondOption,
			thirdOption,
			fourthOption
		);
		gamezone.append(row);
	}

	function updateHeader(className) {
		$(".starter-template h1").html("Class: " + className);

		var numCorrect = createElem("span", null, "num-correct");
		var totalAttempts = createElem("span", null, "total-attempts");

		$(".starter-template .lead").html("Score: ");
		$(".starter-template .lead").append(numCorrect, "/", totalAttempts);
		numCorrect.html(numRight);
		totalAttempts.html(total);
	}

	function createOption(type, text) {
		var button = createElem(
			"button",
			"btn btn-" + type + " btn-lg btn-block option"
		);

		button.text(text);

		return button
	}

	function createImage() {
		var image = $("<img class='img-fluid' />")

		image.attr("src", "assets/images/famous-people/walt-disney.jpg");

		return image;
	}

	function createElem(elem, elemClass, elemId) {
		elemClass = elemClass ||  null;
		elemId = elemId || null;

		return $("<" + elem + ">", { class: elemClass, id: elemId });
	}

	function randomNum(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
	}
});
