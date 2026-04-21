/**
 * 
 */
let selected = [];

    const input = document.getElementById("skillInput");
    const dropdown = document.getElementById("dropdown");
    const container = document.getElementById("selectedSkills");
    const hiddenInput = document.getElementById("skillsHidden");

    // Show dropdown
    input.addEventListener("focus", () => {
        dropdown.classList.remove("hidden");
    });

    // Add skill
	function addSkill(skill) {
	    if (!selected.includes(skill)) {
	        selected.push(skill);
	        renderChips();
	    }

	    // ✅ CLOSE DROPDOWN
	    dropdown.classList.add("hidden");
	}
    // Remove skill
    function removeSkill(skill) {
        selected = selected.filter(s => s !== skill);
        renderChips();
    }
	
	document.addEventListener("click", function (e) {
	    if (!e.target.closest(".relative")) {
	        dropdown.classList.add("hidden");
	    }
	});
	
	input.addEventListener("focus", () => {
	    dropdown.classList.remove("hidden");
	});

    // Render chips
    function renderChips() {
        container.innerHTML = "";

        selected.forEach(skill => {
            const chip = document.createElement("div");
            chip.className = "flex items-center gap-1 bg-blue-500 text-white px-3 py-1 rounded-full text-sm";

            chip.innerHTML = `
                <span>${skill}</span>
                <button onclick="removeSkill('${skill}')" type="button">×</button>
            `;

            container.appendChild(chip);
        });

        container.appendChild(input);

        // Update hidden input for backend
        hiddenInput.value = selected.join(",");
    }

    // Search filter
    input.addEventListener("keyup", function () {
        let filter = this.value.toLowerCase();
        let items = document.querySelectorAll("#skillList li");

        items.forEach(item => {
            let text = item.textContent.toLowerCase();
            item.style.display = text.includes(filter) ? "" : "none";
        });
    });