function togglePassword() {
    const pwd = document.getElementById("password");
    const icon = document.querySelector(".eye-icon");
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
document.addEventListener('DOMContentLoaded', function() {
    // Custom select functionality
    const selectWrapper = document.querySelector('.custom-select-wrapper');
    const select = selectWrapper.querySelector('.custom-select');
    const trigger = selectWrapper.querySelector('.custom-select__trigger');
    const options = selectWrapper.querySelectorAll('.custom-option');
    const hiddenSelect = selectWrapper.querySelector('.hidden-select');

    // Add click event to trigger
    trigger.addEventListener('click', function() {
        select.classList.toggle('open');
    });

    // Close select when clicking outside
    window.addEventListener('click', function(e) {
        if (!selectWrapper.contains(e.target)) {
            select.classList.remove('open');
        }
    });

    // Setup options
    options.forEach(option => {
        option.addEventListener('click', function() {
            // Deselect previous selection
            const selected = selectWrapper.querySelector('.custom-option.selected');
            if (selected) {
                selected.classList.remove('selected');
            }

            // Select clicked option
            this.classList.add('selected');

            // Update trigger text
            trigger.querySelector('span').textContent = this.textContent;

            // Update hidden select for form submission
            hiddenSelect.value = this.getAttribute('data-value');

            // Trigger change event on hidden select
            const event = new Event('change');
            hiddenSelect.dispatchEvent(event);

            // Close dropdown
            select.classList.remove('open');
        });
    });
});