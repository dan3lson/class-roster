$(document).ready(function() {
	var numWrong = 0;
	var numRight = 0;
	var percentCorrect = 0;
	var section = "";
	var correctStudent = "";

	$(".practice-btn").click(function() {
		var $btn = $(this);
		section = $btn.siblings("h3").text();

		$("#sections").hide();
		$("#gamezone").show();

		updateHeader(section);
		playRound();
	});

	$("#gamezone").on("click", ".option", function() {
		var button = $(this);

		if (button.text() == partialName(correctStudent)) {
			displayRightButton(button);
			increaseNumRight();
			disableButton(button);
			disableAllButtons(button);

			$("#num-correct").html(numRight);
			$("#mastery-percentage").html(mastery(numWrong, numRight));

			setTimeout(playRound, 400);
		} else {
			disableButton(button);
			displayWrongButton(button);
			increaseNumWrong();
			$("#num-wrong").html(numWrong);
			$("#mastery-percentage").html(mastery(numWrong, numRight));
		}
	});

	function playRound() {
		getStudents(section).done(function(response) {
			correctStudent = response.correct_student;
			var students = response.students;

			displayNextQuestion(students);
		});
	}

	function getStudents(section) {
		var URL = "/students?section=" + section;

		return $.get(URL, function() {}, "json");
	}

	function displayNextQuestion(studentsArray) {
		var $secondColumn = $("#gamezone .col-sm-6:last");
		$secondColumn.empty();

		createMultipleChoice(studentsArray);
	}

	function mastery(numWrong, numRight) {
		var total = numWrong + numRight;

		return Math.floor((numRight / total) * 100);
	}

	function increaseNumWrong() {
		numWrong += 1;
	}

	function increaseNumRight() {
		numRight += 1;
	}

	function displayWrongButton(button) {
		button.removeClass("btn-outline-primary").addClass("btn-danger");
		button.append(" &#10006;");
	}

	function displayRightButton(button) {
		button.removeClass("btn-outline-primary").addClass("btn-success");
		button.append(" &#10004;");
	}

	function disableAllButtons(button) {
		$.each(button.siblings(), function() {
			disableButton($(this));
		});
	}

	function disableButton(button) {
		button.prop("disabled", true);
	}

	function createMultipleChoice(studentsArray) {
		var $gamezone = $("#gamezone");
		var $secondCol = $gamezone.find(".col-sm-6:last");
		var firstOption = createOption(partialName(correctStudent));
		var secondOption = createOption(partialName(randStudent(studentsArray)));
		var thirdOption = createOption(partialName(randStudent(studentsArray)));
		var fourthOption = createOption(partialName(randStudent(studentsArray)));
		var optionsArray = [
			firstOption,
			secondOption,
			thirdOption,
			fourthOption
		];
		var shuffledOptions = shuffleArray(optionsArray);
		var $correctstudentImage = $gamezone.find(
			"img[alt='" + fullName(correctStudent) + "']"
		);

		$gamezone.find("img").hide();
		$correctstudentImage.fadeIn("slow");
		$secondCol.append(shuffledOptions);
	}

	function partialName(user) {
		return user.first_name + " " + user.last_name[0] + ".";
	}

	function fullName(user) {
		return user.first_name + " " + user.last_name;
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

		displayStartingScore();
	}

	function displayStartingScore() {
		var $numCorrect = createElem("span", null, "num-correct");
		var $numIncorrect = createElem("span", null, "num-wrong");
		var $percentCorrect = createElem("span", null, "mastery-percentage");
		var $headerText = $("#header .card-text");

		$headerText.html("Score: ");
		$headerText.append(
			$numCorrect,
			"&#10004; ",
			$numIncorrect,
			"&#10006; ",
			$percentCorrect,
			"&#37;"
		);
		$numCorrect.html(numRight);
		$numIncorrect.html(numWrong);
		$percentCorrect.html(percentCorrect);
	}

	function createOption(text) {
		var $button = createElem(
			"button",
			"btn btn-outline-primary btn-lg btn-block option"
		);

		$button.text(text);

		return $button;
	}

	function createImage(studentsArray) {
		var $image = $("<img class='img-fluid' />")
		var stu = randStudentImgSrc(studentsArray);
		$("#stu-image").data("path");
		return $image;
	}

	function createElem(elem, elemClass, elemId) {
		elemClass = elemClass ||  null;
		elemId = elemId || null;

		return $("<" + elem + ">", { class: elemClass, id: elemId });
	}

	function randomNum(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
	}

	function shuffleArray(array) {
		var m = array.length, t, i;

		while (m) {
			i = Math.floor(Math.random() * m--);
			t = array[m];

			array[m] = array[i];
			array[i] = t;
		}
		return array;
	};
});