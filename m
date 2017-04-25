X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1147" "Tuesday" "25" "April" "2017" "16:56:56" "-0400" "Stuart Gathman" "stuart@gathman.org" "<d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>" "22" "Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" "^Date:" nil nil "4" "2017042520:56:56" "[oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" (number mark "        stuart@gathm Apr 25   22/1147  " thread-indent "\"Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)\"\n") "<CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>" ("<CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3268 invoked by uid 550); 26 Apr 2017 06:31:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32088 invoked from network); 25 Apr 2017 20:57:22 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="fc37:2c50:7583:e01a:8c69:8f50:8dcf:a076" (h.elissa.gathman.org); auth=pass (CRAM-MD5 sslbits=None) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; i=@gathman.org; 
 q=dns/txt; s=default; t=1493153828; h=subject : to : references : from 
 : message-id : date : mime-version : in-reply-to : content-type : 
 content-transfer-encoding : subject : from : date; 
 bh=W4Wfp9/zP0Z7WXjPg3HvhmmK1StOcm4jqaSzceBRrYE=; 
 b=G2/OVZtI1qADQzr7H9oZD/qyVfFvz2gFurBUivBjz6Yh9zGh/cdvFb52FRWHgPkGY3Imi6
 LbcH4wn2CDJRSMq2HNmUMfAepJ6XnxsP80ZhXakle1qVsPfqZUzHYVqQ+APzRbVMkcCza3iT
 uW09M622eL6aSDZay2l1VS7hedlEw=
References: <CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>
Organization: Gathman Systems
Jabber-Id:  stuart@gathman.org
Message-ID: <d414e085-1071-0815-98cf-94d68ca76df5@gathman.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Apr 2017 16:56:56 -0400
From: Stuart Gathman <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution
 (CVE-2017-7692)
To: oss-security@lists.openwall.com

On 04/24/2017 05:14 PM, Dawid Golunski wrote:
> SquirrelMail <=3D 1.4.23 Remote Code Execution (CVE-2017-7692)
>
> Desc.:
> SquirrelMail is affected by a critical Remote Code Execution vulnerability
> which stems from insufficient escaping of user-supplied data when
> SquirrelMail has been configured with Sendmail as the main transport.
> An authenticated attacker may be able to exploit the vulnerability
> to execute arbitrary commands on the target and compromise the remote
> system.
We deploy squirrelmail NOT using sendmail for sending mail ($useSendmail
=3D false).  There is no reason not to use SMTP instead of running
sendmail directly.  It doesn't seem to be vulnerable that way - and I
suggest that as a mitigation.  Just to be sure, after reading this
advisory I added  $sendmail_path  =3D '/usr/sbin/false'; (We always avoid
direct command execution with PHP because PHP is prone to quoting bugs.)=20

OT: is there already a utility that *safely* logs arguments and stdin
(as was apparently used to explain the exploit)?  I could write a C
prog, or a carefully quoted bash script - but would rather use an
already proven utility.

