// js/script.js

// Wait for the DOM to fully load
document.addEventListener("DOMContentLoaded", () => {
  fetch("/data/progress.json")
    .then(response => {
      if (!response.ok) {
        throw new Error("Failed to load progress.json");
      }
      return response.json();
    })
    .then(data => {
      console.log("Fetched data:", data); // Debug log

      const container = document.getElementById("progress-container");
      if (!container) {
        console.error("No #progress-container found in HTML");
        return;
      }

      Object.entries(data).forEach(([section, items]) => {
        const sectionDiv = document.createElement("div");
        sectionDiv.classList.add("progress-section");

        const header = document.createElement("h2");
        header.textContent = section;

        const list = document.createElement("ul");
        items.forEach(item => {
          const li = document.createElement("li");
          li.textContent = item;
          list.appendChild(li);
        });

        sectionDiv.appendChild(header);
        sectionDiv.appendChild(list);
        container.appendChild(sectionDiv);
      });
    })
    .catch(error => {
      console.error("Error loading progress data:", error);
    });
});
