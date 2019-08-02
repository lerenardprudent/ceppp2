$(document).ready(function() {
  let lang = $('html').attr('lang').substring(0,2)
  let urlCepppDataStorageInfo = `https://ceppp.ca/${lang}/`
  urlCepppDataStorageInfo += lang == "fr" ? "renseignements-donnees-patients" : "patient-data-info"
  let urlLabel = SUGAR.language.translate('app_strings', 'LBL_DATA_STORAGE_INFO_LINK_TEXT')
  var urlHtml = `<a data-lang='${lang}' href='${urlCepppDataStorageInfo}' target='_blank'>${urlLabel}</a>`
  $('div[field="consentement_usage_donnees"]').append(urlHtml)
})

function undef(x)
{
  return typeof x === 'undefined';
}