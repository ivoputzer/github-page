const fragment = document.createDocumentFragment()
const text = document.createTextNode('✅ Javascript application')
const h1 = document.createElement('h2')

h1.appendChild(text)
fragment.appendChild(h1)

export default fragment
