// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require_tree .

addEvent(window, 'load', windowLoad);


function addEvent(obj, evType, fn){
    if (obj.addEventListener) {
        obj.addEventListener(evType, fn, false);
    } else if (obj.attachEvent) {
        obj.attachEvent('on' + evType, fn);
    }
}

function getParentForm(obj) {
    while ((obj = obj.parentNode)) {
        if (obj.nodeName == 'FORM') {
            break;
        }
    }
    return obj;
}


function windowLoad() {
    var buttons = document.getElementsByTagName('input');
    for (var i = 0; i < buttons.length ; i++) {
        if (buttons[i].getAttribute('type') == 'submit' && buttons[i].className == 'link') {
            var link = document.createElement('a');
            link.appendChild(document.createTextNode(buttons[i].getAttribute('value')));
            link.setAttribute('href', '#');
            addEvent(link, 'click', linkClick);

            var parent = buttons[i].parentNode;
            parent.removeChild(buttons[i]);
            parent.appendChild(link);
        }
    }

}

function linkClick(e) {
    var e = window.event || e;
    var target = e.target || e.srcElement;
    var parentForm = getParentForm(target);
    parentForm.submit();

    if (window.event) { e.returnValue = false; } else { e.preventDefault(); }
}
$(document).ready(function() {
    $('#form-2').hide();
    $('#add_todo').click(function() {
        $('#form-2').show();
        $('#add_todo').hide();
    });
    $('#back').click(function() {
        $('#form-2').hide();
        $('#add_todo').show();
    });
});
