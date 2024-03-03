document.addEventListener("DOMContentLoaded", function() {
    var origElements = document.querySelectorAll("orig");

    origElements.forEach(function(origElement) {
        origElement.addEventListener("mouseover", function(event) {
            var tooltip = document.createElement("div");
            tooltip.className = "tooltip";
            var regContent = origElement.getAttribute("data-reg");
            tooltip.textContent = regContent;
            tooltip.style.left = event.pageX + "px";
            tooltip.style.top = event.pageY + "px";
            document.body.appendChild(tooltip);

            origElement.addEventListener("mouseout", function() {
                tooltip.parentNode.removeChild(tooltip);
            });
        });
    });
});
