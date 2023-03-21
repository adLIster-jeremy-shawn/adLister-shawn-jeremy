// (function () {
//     'use strict'
//
//     let forms = document.querySelectorAll('.needs-validation')
//
//     // Loop over them and prevent submission
//     Array.prototype.slice.call(forms)
//         .forEach(function (form) {
//             form.addEventListener('submit', function (event) {
//                 if (!form.checkValidity()) {
//                     event.preventDefault()
//                     event.stopPropagation()
//                 }
//                 form.classList.add('is-valid')
//             }, false)
//         })
// })()