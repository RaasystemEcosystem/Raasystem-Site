// script.js

function toggleMenu() {
    document.getElementById('nav-list').classList.toggle('show');
  }
  
  // Placeholder for subscription form submission
  document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('form');
    if (form) {
      form.addEventListener('submit', function (e) {
        e.preventDefault();
        const email = form.querySelector('input[type="email"]').value;
        // Implement subscription logic here
        alert(`Subscribed with email: ${email}`);
        form.reset();
      });
    }
  });
  