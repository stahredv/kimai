{literal}    
<script type="text/javascript">
    //var ts_ext_knd_arr = new Array({$knd_arr});
</script>
{/literal}

{cycle values="odd,even" reset=true print=false}
          <table>

            <tbody>
    
{section name=row loop=$arr_pct}
{if $arr_pct[row].pct_visible || $arr_pct[row].zeit != "0:00"}
                <tr class="pct knd{$arr_pct[row].knd_ID} {cycle values="odd,even"}" >
                    
                    
                    <td nowrap class="option">

{*
                        <a href ="#" onClick="filterSubject('pct',{$arr_pct[row].pct_ID});"><img src='../skins/{$kga.conf.skin}/grfx/filter.png' width='13' height='13' alt='{$kga.lang.filter}' title='{$kga.lang.filter} (ID:{$arr_pct[row].pct_ID})' border='0' /></a>
*}

{if $kga.usr.usr_sts != 2}
                        <a href ="#" onClick="editSubject('pct',{$arr_pct[row].pct_ID});"><img src='../skins/{$kga.conf.skin}/grfx/edit2.gif' width='13' height='13' alt='{$kga.lang.edit}' title='{$kga.lang.edit} (ID:{$arr_pct[row].pct_ID})' border='0' /></a>
{/if}
                        <a href ="#" class="preselect" onClick="ts_ext_preselect('pct',{$arr_pct[row].pct_ID},'{$arr_pct[row].pct_name}',{$arr_pct[row].knd_ID},'{$arr_pct[row].knd_name}'); return false;" id="ps{$arr_pct[row].pct_ID}"><img src='../skins/{$kga.conf.skin}/grfx/preselect_off.png' width='13' height='13' alt='{$kga.lang.select}' title='{$kga.lang.select} (ID:{$arr_pct[row].pct_ID})' border='0' /></a>
                    </td>

                    <td width="100%" class="projects" onmouseover="ChangeColor(this,true);" onmouseout="ChangeColor(this,false);" onClick="ts_ext_preselect('pct',{$arr_pct[row].pct_ID},'{$arr_pct[row].pct_name}',{$arr_pct[row].knd_ID},'{$arr_pct[row].knd_name}'); return false;">
                        {if $arr_pct[row].pct_visible != 1}<span style="color:#bbb">{/if}
                        {if $kga.conf.flip_pct_display}    
                            {if $kga.conf.showIDs == 1}<span class="ids">{$arr_pct[row].pct_ID}</span> {/if}<span class="lighter">{$arr_pct[row].knd_name|truncate:30:"..."}:</span> {$arr_pct[row].pct_name}
                        {else}
                            {if $kga.conf.pct_comment_flag == 1}
                                {if $kga.conf.showIDs == 1}<span class="ids">{$arr_pct[row].pct_ID}</span> {/if}{$arr_pct[row].pct_name} <span class="lighter">{if $arr_pct[row].pct_comment}({$arr_pct[row].pct_comment|truncate:30:"..."}){else}<span class="lighter">({$arr_pct[row].knd_name|truncate:30:"..."})</span>{/if}</span>
                            {else}
                                {if $kga.conf.showIDs == 1}<span class="ids">{$arr_pct[row].pct_ID}</span> {/if}{$arr_pct[row].pct_name} <span class="lighter">({$arr_pct[row].knd_name|truncate:30:"..."})</span>
                            {/if}
                        {/if}
                        {if $arr_pct[row].pct_visible != 1}</span>{/if}
                    </td>


                    <td class="time">
                        {if $arr_pct[row].pct_visible != 1}<span style="color:#bbb">{/if}
                        {$arr_pct[row].zeit}
                        {if $arr_pct[row].pct_visible != 1}</span>{/if}
                    </td>

                </tr>
{/if}            
{/section}

{if $arr_pct == '0'}
                <tr>
                    <td nowrap colspan='3'>
                        <strong style="color:red">{$kga.lang.noItems}</strong>
                    </td>
                </tr>
{/if}


            </tbody>  
        </table>  