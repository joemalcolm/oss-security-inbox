X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["396" "Tuesday" "2" "August" "2016" "06:26:37" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20160802082351.560@usenet.piggo.com>" "15" "[oss-security] Re: CVE request: mongodb: world-readable .dbshell history file" nil nil nil "8" "2016080206:26:37" "[oss-security] Re: CVE request: mongodb: world-readable .dbshell history file" (number mark "U       seb@debian.o Aug  2   15/396   " thread-indent "\"[oss-security] Re: CVE request: mongodb: world-readable .dbshell history file\"\n") "<CAPiURgU=B9-scN=io0cJrS-4FfrLCnJ=MFiBSfMoKyCG-L0kQA@mail.gmail.com>" ("<20160729170700.977@usenet.piggo.com>" "<20160729172848.B025EABC9D4@smtpvmsrv1.mitre.org>" "<CAPiURgU=B9-scN=io0cJrS-4FfrLCnJ=MFiBSfMoKyCG-L0kQA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13396 invoked by uid 550); 2 Aug 2016 06:26:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13377 invoked from network); 2 Aug 2016 06:26:55 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Date: Tue, 2 Aug 2016 06:26:37 +0000 (UTC)
Message-ID: <20160802082351.560@usenet.piggo.com>
References: <20160729170700.977@usenet.piggo.com>
 <20160729172848.B025EABC9D4@smtpvmsrv1.mitre.org>
 <CAPiURgU=B9-scN=io0cJrS-4FfrLCnJ=MFiBSfMoKyCG-L0kQA@mail.gmail.com>
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: slrn/1.0.2 (Linux)
Cc: mongodb-user@googlegroups.com
Subject: [oss-security] Re: CVE request: mongodb: world-readable .dbshell history file

On 2016-08-01, Grant Ridder <shortdudey123@gmail.com> wrote:
> FWIW, the vendor has closed
> https://jira.mongodb.org/browse/SERVER-25335 with "Works as
> Designed"

Whatever the umask value is, an application should apply proper
permissions on files deemed sensitive. For instance, ssh-keygen(1)
will never create a world-readable private key, regardless of what the
umask is.

Cheers,

--Seb


