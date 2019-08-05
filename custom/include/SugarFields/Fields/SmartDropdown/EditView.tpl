
<script src="custom/include/SugarFields/Fields/SmartDropdown/js/chosen.jquery.js"></script>
<link rel="stylesheet" href="custom/include/SugarFields/Fields/SmartDropdown/css/chosen.min.css">
<link rel="stylesheet" href="custom/include/SugarFields/Fields/SmartDropdown/css/custom.css">

{if strlen({{sugarvar key='value' string=true}}) <= 0}
    {assign var="value" value={{sugarvar key='default_value' string=true}} }
{else}
    {assign var="value" value={{sugarvar key='value' string=true}} }
{/if}

{assign var="opts" value={{sugarvar key='options' string=true}} }
{assign var="value" value='&'|explode:$value string=true}
{if strlen({{sugarvar key='isMultiSelect' string=true}}) == 1}
    {assign var="mult" value="multiple" }
    {assign var="chosen_placeholder" value=$APP.LBL_CHOSEN_JS_PLACEHOLDER_MULTIPLE }
{else}
    {assign var="mult" value="" }
    {assign var="chosen_placeholder" value=$APP.LBL_CHOSEN_JS_PLACEHOLDER_SINGLE }
{/if}

<select {$mult} 
  id='{{if empty($displayParams.idName)}}{{sugarvar key='name'}}{{else}}{{$displayParams.idName}}{{/if}}'
  name='{{if empty($displayParams.idName)}}{{sugarvar key='name'}}{{else}}{{$displayParams.idName}}{{/if}}'
        data-placeholder='{$chosen_placeholder}' class="chosen-select" tabindex="4"
        type='{{if empty($displayParams.type)}}{{sugarvar key='type'}}{{else}}{{$displayParams.type}}{{/if}}'
        onchange="updateHidden(event)"
        >
  {foreach from=$opts key=kg item=vg}
    {if is_array($vg)}
    <optgroup label='{$kg}'>
      {foreach from=$vg key=k item=v}
        <option value="{$k}" {if in_array($k, $value)} selected {/if}>{$v}</option>
      {/foreach}
    </optgroup>
    {else}
      <option value="{$kg}" {if in_array($kg, $value)} selected {/if}>{$vg}</option>
    {/if}
  {/foreach}
</select>

{assign var="helptext" value='{{$vardef.qdetail|escape}}'}
{if $lang == "en"} {assign var="helptext" value='{{$vardef.qdetail_en|escape}}' } {/if}
<div class='help-text smart-dropdown'>
  {$helptext}
</div>
{if strlen({{sugarvar key='isMultiSelect' string=true}}) == 1}
<input type="hidden" id='{{if empty($displayParams.idName)}}{{sugarvar key='name'}}{{else}}{{$displayParams.idName}}{{/if}}'
  name='{{if empty($displayParams.idName)}}{{sugarvar key='name'}}{{else}}{{$displayParams.idName}}{{/if}}' value="{{$value}}" />
{/if}
        
<script>
    {literal}
    $(document).ready(function(){
        var chosenOptions = {
          allow_single_deselect: true
        };
        $('#{/literal}{{if empty($displayParams.idName)}}{{sugarvar key='name'}}{{else}}
        {{$displayParams.idName}}{{/if}}{literal}').chosen(chosenOptions); /*.trigger('chosen:open');*/
    });
    
    function updateHidden(event) {
      $target = $(event.target);
      var name = $target.prop('name');
      $hidden = $('[name="' + name + '"][type="hidden"]' );
      if ( $hidden.length ) {
        console.log($target.val());
        var val = $target.val();
        if ( typeof(val) === "object" ) {
          val = val.filter(function(x) { return $.trim(x).length > 0; });
          val = val.join("&");
        }
        $hidden.val(val);
        console.log("Hidden field updated to ", val);
      }
    }
    {/literal}
</script>