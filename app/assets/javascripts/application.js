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

//= require jquery

//= require rails-ujs
//= require activestorage
//= require icheck

//= require_tree .
//= require select2

$(document).ready(function() {


    $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',

    });


    $('input').on('ifClicked', function (event) {
        if($('#todobox' + this.id).hasClass('notCompletedToDo'))
            $('#todobox' + this.id).removeClass('notCompletedToDo').addClass('completedToDo');
        else $('#todobox' + this.id).removeClass('completedToDo').addClass('notCompletedToDo');
        event.preventDefault();
        $("#" + this.id).submit();
        console.log(this.id);
    })


    $('#addingForm').hide();
    $('#add_todo').click(function() {
        $('#addingForm').show();
        $('input').iCheck('disable');
    });
    $('#back').click(function() {
        $('#addingForm').hide();
        $('input').iCheck('enable');

    });

    $(".addBtn").click(function(event) {
        event.preventDefault();
        $("#form-2").submit();
    });

    $( ".selectList" ).select2({
        dropdownParent: $('#addingField'),
        placeholder: 'Категория',
        minimumResultsForSearch: -1
    });


});


