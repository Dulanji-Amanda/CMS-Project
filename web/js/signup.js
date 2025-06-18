// function togglePassword() {
//     const pwd = document.getElementById("password");
//     const icon = document.querySelector(".eye-icon");
//     if (pwd.type === "password") {
//         pwd.type = "text";
//         icon.classList.remove("fa-eye");
//         icon.classList.add("fa-eye-slash");
//     } else {
//         pwd.type = "password";
//         icon.classList.remove("fa-eye-slash");
//         icon.classList.add("fa-eye");
//     }
// }
// document.addEventListener('DOMContentLoaded', function() {
//     // Custom select functionality
//     const selectWrapper = document.querySelector('.custom-select-wrapper');
//     const select = selectWrapper.querySelector('.custom-select');
//     const trigger = selectWrapper.querySelector('.custom-select__trigger');
//     const options = selectWrapper.querySelectorAll('.custom-option');
//     const hiddenSelect = selectWrapper.querySelector('.hidden-select');
//
//     // Add click event to trigger
//     trigger.addEventListener('click', function() {
//         select.classList.toggle('open');
//     });
//
//     // Close select when clicking outside
//     window.addEventListener('click', function(e) {
//         if (!selectWrapper.contains(e.target)) {
//             select.classList.remove('open');
//         }
//     });
// // ✅ Real-world Regex patterns
//     const usernameRegex = /^(?=.{4,20}$)(?![\.])(?!.*[\.]{2})[a-zA-Z0-9.]+(?<![\.])$/;
//     const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
//     const passwordRegex = /^(?=.[a-z])(?=.[A-Z])(?=.\d)(?=.[@$!%?#&_])[A-Za-z\d@$!%?#&_]{8,}$/;
//
//     document.addEventListener("DOMContentLoaded", function () {
//         const form = document.querySelector("form");
//         form.addEventListener("submit", function (e) {
//             let valid = true;
//             document.querySelectorAll('.error-msg').forEach(el => el.remove());
//
//             const username = document.getElementById("username");
//             const email = document.getElementById("email");
//             const password = document.getElementById("password");
//             const role = document.getElementById("role");
//
//             // Validate username
//             if (!usernameRegex.test(username.value)) {
//                 showError(username, "Username must be 4–20 characters (letters, numbers, dot or underscore). No leading/trailing symbols.");
//                 valid = false;
//             }
//
//             // Validate email
//             if (!emailRegex.test(email.value)) {
//                 showError(email, "Enter a valid email address.");
//                 valid = false;
//             }
//
//             // Validate password
//             if (!passwordRegex.test(password.value)) {
//                 showError(password, "Password must be 8+ characters, include uppercase, lowercase, number, and special character.");
//                 valid = false;
//             }
//
//             // Validate role (dropdown)
//             if (role && role.value.trim() === "") {
//                 showError(role, "Please select a role.");
//                 valid = false;
//             }
//
//             if (!valid) e.preventDefault();
//         });
//     });
//
//     function showError(input, message) {
//         const error = document.createElement("div");
//         error.className = "error-msg";
//         error.style.color = "#e74c3c";
//         error.style.fontSize = "0.9em";
//         error.style.marginTop = "4px";
//         error.textContent = message;
//
//         if (input.parentNode) {
//             input.parentNode.appendChild(error);
//         }
//     }
//     // Setup options
//     options.forEach(option => {
//         option.addEventListener('click', function() {
//             // Deselect previous selection
//             const selected = selectWrapper.querySelector('.custom-option.selected');
//             if (selected) {
//                 selected.classList.remove('selected');
//             }
//
//             // Select clicked option
//             this.classList.add('selected');
//
//             // Update trigger text
//             trigger.querySelector('span').textContent = this.textContent;
//
//             // Update hidden select for form submission
//             hiddenSelect.value = this.getAttribute('data-value');
//
//             // Trigger change event on hidden select
//             const event = new Event('change');
//             hiddenSelect.dispatchEvent(event);
//
//             // Close dropdown
//             select.classList.remove('open');
//         });
//     });
// });
//
function togglePassword() {
    const pwd = document.getElementById("password");
    const icon = document.getElementById("togglePassword");
    if (pwd.type === "password") {
        pwd.type = "text";
        icon.classList.remove("fa-eye");
        icon.classList.add("fa-eye-slash");
    } else {
        pwd.type = "password";
        icon.classList.remove("fa-eye-slash");
        icon.classList.add("fa-eye");
    }
}

const usernameRegex = /^(?=.{4,20}$)(?![_\.])(?!.*[_\.]{2})[a-zA-Z0-9._]+(?<![_\.])$/;
const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?#&_])[A-Za-z\d@$!%*?#&_]{8,}$/;

document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");
    form.addEventListener("submit", function (e) {
        let valid = true;
        document.querySelectorAll('.error-msg').forEach(el => el.remove());

        const username = document.getElementById("username");
        const email = document.getElementById("email");
        const password = document.getElementById("password");
        const role = document.getElementById("role");

        // Validate username
        if (!usernameRegex.test(username.value)) {
            showError(username, "Username must be 4–20 characters (letters, numbers, dot or underscore). No leading/trailing symbols.");
            valid = false;
        }

        // Validate email
        if (!emailRegex.test(email.value)) {
            showError(email, "Enter a valid email address.");
            valid = false;
        }

        // Validate password
        if (!passwordRegex.test(password.value)) {
            showError(password, "Password must be 8+ characters, include uppercase, lowercase, number, and special character.");
            valid = false;
        }

        // Validate role (dropdown)
        if (role && role.value.trim() === "") {
            showError(role, "Please select a role.");
            valid = false;
        }

        if (!valid) e.preventDefault();
    });
});

function showError(input, message) {
    const error = document.createElement("div");
    error.className = "error-msg";
    error.style.color = "#e74c3c";
    error.style.fontSize = "0.9em";
    error.style.marginTop = "4px";
    error.textContent = message;

    if (input.parentNode) {
        input.parentNode.appendChild(error);
    }
}