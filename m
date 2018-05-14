X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2736" "Monday" "14" "May" "2018" "14:52:44" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20180514145244.64c73b08@redhat.com>" "67" "Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" "^Cc:" nil nil "5" "2018051412:52:44" "[oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" (number mark "        thoger@redha May 14   67/2736  " thread-indent "\"Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability\"\n") "<CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>" ("<CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28528 invoked by uid 550); 14 May 2018 12:53:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28462 invoked from network); 14 May 2018 12:53:00 -0000
Message-ID: <20180514145244.64c73b08@redhat.com>
In-Reply-To: <CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>
References: <CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Mon, 14 May 2018 12:52:48 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Mon, 14 May 2018 12:52:48 +0000 (UTC) for IP:'10.11.54.4' DOMAIN:'int-mx04.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'thoger@redhat.com' RCPT:''
Cc: oss-security@lists.openwall.com, security <security@apache.org>, gregory
 draperi <gregory.draperi@gmail.com>
Date: Mon, 14 May 2018 14:52:44 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby
 externally-controlled input vulnerability
To: Bryan Pendleton <bpendleton.derby@gmail.com>

Hi Bryan!

On Sat, 5 May 2018 07:52:08 -0700 Bryan Pendleton wrote:

> CVE-2018-1313: Apache Derby externally-controlled input vulnerability
>=20
> Severity: Important
>=20
> Vendor:
> The Apache Software Foundation
>=20
> Versions Affected:
> Derby 10.3.1.4 to 10.14.1.0
>=20
> Description:
> A specially-crafted network packet can be used to request the Derby
> Network Server to boot a database whose location and contents are under
> the user's control. If the Derby Network Server is not running with a
> Java Security Manager policy file, the attack is successful. If the
> server is using a policy file, the policy file must permit the
> database location to be read for the attack to work. The default
> Derby Network Server policy file distributed with the affected releases
> includes a permissive policy as the default Network Server policy, which
> allows the attack to work.
>=20
> Mitigation:
> Users should specify an explicit security policy file, as described here:
> http://db.apache.org/derby/docs/10.14/security/csecjavasecurity.html
>=20
> Derby release 10.14.2.0 disallows the specially-crafted network packet,
> and also modifies the default Derby Network Server policy file to be
> significantly less permissive (the default file access policy is now
> limited to the derby.system.home directory and the directory from
> which the Derby jar files were loaded). It is still recommended that
> production installations of the Derby Network Server should specify
> an explicit security policy file.
>=20
> Credit:
> This issue was discovered by Gr=C3=A9gory Draperi

Can you clarify what upstream considers to be the fix for this issue?
Some sources such as:

http://www.systemtek.co.uk/2018/05/apache-derby-externally-controlled-input=
-vulnerability-cve-2018-1313/

indicate that the fix is the change to the default security policy,
i.e. DERBY-6987.  However, the wording above seems to consider that as
more of an additional hardening fix, and the actual security fix is
change to handling of the ping command to disallow additional
arguments, i.e. DERBY-6986.

Related to the above is the question regarding the list of affected
versions.  Version 10.3.1.4 is listed as the first affected, however
the "ping with arguments" should pre-date that version, and even
DERBY-6986 indicates it's old code.  However, 10.3.1.4 seems to be the
first version to include the default security policy, which may be the
reason why it's listed as the first affected.

And one more clarification for those of us not familiar with Derby:
What is the known impact of opening some untrusted database?  Is it
known to e.g. allow arbitrary code execution directly in Derby?

Thank you!

--=20
Tomas Hoger / Red Hat Product Security
