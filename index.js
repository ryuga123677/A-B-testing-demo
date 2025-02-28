document.addEventListener("DOMContentLoaded", function() {
    const button = document.getElementById("cta-button");

    // Randomly assign user to version A or B
    const variant = Math.random() < 0.5 ? "A" : "B";

    if (variant === "A") {
        button.textContent = "Get Started";
        button.classList.add("version-a");
    } else {
        button.textContent = "Try Now";
        button.classList.add("version-b");
    }

    console.log("User assigned to version:", variant);
});
