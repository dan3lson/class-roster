$(document).ready(function() {
	var numWrong = 0;
	var numRight = 0;
	var percentCorrect = 0;
	var section = $("#gamezone").data("section-name");
	var correctStudent = "";

	if (section != null) {
		playRound();
	}

	$("#gamezone").on("click", ".option", function() {
		var button = $(this);

		if (button.text() == correctStudent.first_name) {
			displayRightButton(button);
			increaseNumRight();
			disableButton(button);
			disableAllButtons(button);
			scoreRound(correctStudent, "correct");

			$("#num-correct").html(numRight);
			$("#mastery-percentage").html(mastery(numWrong, numRight));

			setTimeout(playRound, 400);
		} else {
			disableButton(button);
			displayWrongButton(button);
			increaseNumWrong();
			scoreRound(correctStudent, "incorrect");

			$("#num-wrong").html(numWrong);
			$("#mastery-percentage").html(mastery(numWrong, numRight));
		}
	});

	function scoreRound(student, score) {
		var data = {
			"student_id": student.id,
			"score": score
		};

		$.ajax({
			type: "PATCH",
			url: "/stat",
			dataType: "json",
			data: data
		})
		.done(function(response) {
			console.log(response.results)
		});
	}

	function playRound() {
		getStudents(section).done(function(response) {
			var students = response.students;
			correctStudent = response.correct_student;

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
		button.removeClass("btn-primary").addClass("btn-danger");
		button.append(" &#10006;");
	}

	function displayRightButton(button) {
		button.removeClass("btn-primary").addClass("btn-success");
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
		var firstOption = createOption(correctStudent.first_name);
		var secondOption = createOption(randStudent(studentsArray).first_name);
		var thirdOption = createOption(randStudent(studentsArray).first_name);
		var fourthOption = createOption(randStudent(studentsArray).first_name);
		var optionsArray = [
			firstOption,
			secondOption,
			thirdOption,
			fourthOption
		];
		var shuffledOptions = shuffleArray(optionsArray);
		var $correctstudentImage = $gamezone.find(
			"img[alt='" + correctStudent.first_name + "']"
		);

		$gamezone.find("img").hide();
		$correctstudentImage.show();
		$secondCol.append(shuffledOptions);
	}

	function partialName(user) {
		var lastName = user.last_name ? user.last_name[0] + "." : "";

		return user.first_name + " " + lastName;
	}

	function randStudent(array) {
		var num = array.length - 1;

		return array[randomNum(0, num)];
	}

	function randStudentImgSrc(array) {
		var num = array.length - 1;

		return array[randomNum(0, num)].photo;
	}

	function createOption(text) {
		var $button = createElem(
			"button",
			"btn btn-primary btn-lg btn-block option"
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
