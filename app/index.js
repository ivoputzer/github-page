const fragment = document.createDocumentFragment()
const text = document.createTextNode('Github Page: Hello world!')
const h1 = document.createElement('h1')

h1.appendChild(text)
fragment.appendChild(h1)

export default fragment
