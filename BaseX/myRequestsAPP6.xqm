module namespace page = 'http://basex.org/examples/web-page';
 
declare %rest:path("hello/{$who}") 
        %rest:GET function page:hello($who) {
  <response>
    <title>Hello { $who }!</title>
  </response>
};

 declare
  %rest:path("/form")
  %rest:POST
  %rest:form-param("message","{$message}", "(no message)")
  %rest:header-param("User-Agent", "{$agent}")
 function page:hello-postman($message as xs:string, $agent as xs:string)
                                                        as element(response) {
      <response type='form'>
        <message>{ $message }</message>
        <user-agent>{ $agent }</user-agent>
      </response>
};

  
   