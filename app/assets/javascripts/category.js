$(function(){
  //カテゴリーフォームにオプション追加
  function appendOption(category){
    var html = `<option value="${category.name}"data-category="${category.id}">${category.name}</option>`;
    return html;
  }
  //子要素のHTML
  function createChildrenBox(addHTML){
    var childHTML ='';
     childHTML= `<div class=item-category-form id='children-form-box'>
                  <select class"=input-select" id="children-form" name="category">
                    <option value="---" data-category="---">---</option>
                      ${addHTML}
                  </div>
                </div>`;

    $('.item_category').append(childHTML);
  }

    //親カテゴリーを選択したら発火
    $('#parent-form').on('change',function(){
      var parentCategory = document.getElementById('parent-form').value;
      if (parentCategory !="---"){
        $.ajax({
          url: 'category_children',
          type: 'GET',
          data: {parent_name: parentCategory},
          dataType: 'json'
        })
        .done(function(children){
          $('#children-form').remove();
          var addHTML ='';
          children.forEach(function(child){
            addHTML += appendOption(child);
          });
          createChildrenBox(addHTML);
        })
        .fail(function(){
          alert('カテゴリー取得に失敗しました');
        })
      }else{
        $('#children-form').remove();


      }
    });


});

