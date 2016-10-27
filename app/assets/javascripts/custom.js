$(document).ready(function() {
	var total = 0;
	var numRight = 0;

	function User(firstName, photo) {
		this.firstName = firstName;
		this.photo = photo + ".jpg";
	}

	var correctStu = new User("Walt", "walt-disney");
	var charlesDarwin = new User("Charles", "charles-darwin");
	var harlandDavidSanders = new User("Harlend", "col-harland-david-sanders");
	var harrisonFord = new User("Harrison", "harrison-ford");
	var jayZ = new User("Shawn", "jay-z");
	var jkRowling = new User("Joanne", "jk-rowling");
	var studentsArray = [
		charlesDarwin,
		harlandDavidSanders,
		harrisonFord,
		jayZ,
		jkRowling
	]

	$(".practice-btn").click(function() {
		$("#sections").hide();
		$("#gamezone").show();
		updateHeader("Famous People");
		displayNextQuestion();
	});

	$("#gamezone").on("click", ".option", function() {
		var button = $(this);

		if (button.text() == correctStu.firstName || button.text() == "True") {
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
		var dummyStudent = randStudent(studentsArray).firstName;
		var optionsArray = [dummyStudent, correctStu];
		var directions = "Directions: Is this person " + correctStu.firstName + "?";
										//  + optionsArray[randomNum(0, 1)] + "?";
		var firstOption = createOption("True");
		var secondOption = createOption("False");

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
		var firstOption = createOption(correctStu.firstName);
		var secondOption = createOption(randStudent(studentsArray).firstName);
		var thirdOption = createOption(randStudent(studentsArray).firstName);
		var fourthOption = createOption(randStudent(studentsArray).firstName);

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

	function randStudent(array) {
		var num = array.length - 1;

		return array[randomNum(0, num)];
	}

	function randStudentImgSrc(array) {
		var num = array.length - 1;

		return array[randomNum(0, num)].photo;
	}

	function updateHeader(className) {
		$("#header h1").html(className);
		$("#header .card-text:first").hide();

		createScoreCard();
		displayStartingScore();
	}

	function displayStartingScore() {
		var numCorrect = createElem("span", null, "num-correct");
		var totalAttempts = createElem("span", null, "total-attempts");

		$("#header .card-text:last").html("Score: ");
		$("#header .card-text:last").append(numCorrect, "/", totalAttempts);
		numCorrect.html(numRight);
		totalAttempts.html(total);
	}

	function createScoreCard() {
		var card = createElem("div", "card card-outline-primary text-xs-center");
		var cardBlock = createElem("div", "card-block");
		var cardText = createElem("p", "card-text");

		card.append(cardBlock);
		cardBlock.append(cardText);
		$("#header").append(card);
	}

	function createOption(text) {
		var button = createElem(
			"button",
			"btn btn-primary btn-block option"
		);

		button.text(text);

		return button;
	}

	function createImage() {
		var image = $("<img class='img-fluid' />")

		image.attr(
			"src",
			"assets/images/famous-people/" + randStudentImgSrc(studentsArray)
		);

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
