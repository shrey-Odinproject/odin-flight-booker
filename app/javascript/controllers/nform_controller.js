import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ['rendertemp', 'addpass']
    
    add(event){
        event.preventDefault()
        let content = this.rendertempTarget.innerHTML.replace(/TEMPLATE_RECORD/g, Math.floor(Math.random()*20)) // this is an id which needs to be uniq
        this.addpassTarget.insertAdjacentHTML('beforebegin', content) 
        // insertAdjacentHTML (position, content )determines at what position to insert something relative to the target
    }

    remove(event){
        event.preventDefault()
        let item = event.target.closest(".nested-fields")
        item.querySelector("input[name*='_destroy']").value = 1 
        // destroying nested happen only when _detroy is a truthy value so we set to 1 
        item.style.display = 'none'
        // dont actually remove those input fields from dom so we hide them from user 
    }
}
