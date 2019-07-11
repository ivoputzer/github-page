const fragment = document.createDocumentFragment()
const text = document.createTextNode('✅ application')
const h1 = document.createElement('h3')

h1.appendChild(text)
fragment.appendChild(h1)

export default fragment
