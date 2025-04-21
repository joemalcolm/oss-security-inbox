Received: (qmail 16269 invoked by uid 550); 21 Apr 2025 18:54:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14155 invoked from network); 21 Apr 2025 18:38:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jwp.email; s=hera;
	t=1745260676; x=1745941076;
	bh=nqC6jw7ENlmD55CTfS1bAA3ixq2L2n5pNGK609wKIF0=;
	h=Message-ID:Subject:From:To:Date:From;
	z=Message-ID:=20<596d144262ebcecc94c455cf2999ccb1d67bb869.camel@jwp
	 .email>|Subject:=20Re:=20[oss-security]=203=20new=20CVE's=20in=20o
	 ld=20branch=20of=20GNU=20mailman|From:=20"Jim=20P."=20<oss-securit
	 y@jwp.email>|To:=20oss-security@lists.openwall.com|Date:=20Mon,=20
	 21=20Apr=202025=2014:37:55=20-0400;
	b=hKBOMJkPMx8eY3DecIX16myzo3DsA4x/tAr0GPfWMoR7VKEd2WhnCrAt+fiXDhtA7
	 bcmyDbBQEbACG/GPj/ZEwpAsW/85peJZUvPtJYDVbyvKurc6OzPw5bxdGQ4a0vzXQj
	 fh/ykAdHScjUI8czA9rUozzOVfH0bAQfuls+TadKVBdcL8xyb882jfPmQRznFug1ZL
	 dBezr2ViNMy93mek4E9GDxRB7lF/Fk+mN7IRpivUqr5kH2+1czadlOf+kr0ktPjyaH
	 AR81wdBMFvi00rqD8btqQ5d/6pHv+fAHnlZ0voBLr7ly9rY4LruU6H79JmuzGqVtB8
	 K6ehC9ai+2Y6Q==
Message-ID: <596d144262ebcecc94c455cf2999ccb1d67bb869.camel@jwp.email>
From: "Jim P." <oss-security@jwp.email>
To: oss-security@lists.openwall.com
Date: Mon, 21 Apr 2025 14:37:55 -0400
In-Reply-To: <66imbuhbqi4yjbtmpmvvri7sttmw3tmhtemh6pqjcp5kazdai3@cbzrad3k7t4l>
References: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
	 <ewvs55pqvqybv7telryghfmp4sypf2rcjximilprzn5a3pkaie@vcsibbkueub3>
	 <43f96a10-24af-423b-bb21-f2f4001f5ed9@thomas-ward.net>
	 <66imbuhbqi4yjbtmpmvvri7sttmw3tmhtemh6pqjcp5kazdai3@cbzrad3k7t4l>
Content-Type: text/plain; charset="UTF-7"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [oss-security] 3 new CVE's in old branch of GNU mailman

On Mon, 2025-04-21 at 20:45 +-0300, Valtteri Vuorikoski wrote:
+AD4=20
+AD4 So at the moment it seems to me that the correct interpretation is c).=
 Hard to
+AD4 tell because the modified source doesn't seem to be available in despi=
te Mailman
+AD4 being GPL. Maybe someone needs to ask cPanel LLC to mail them a CD?

cPanel's fork of mailman2-python3 is located here:=20
https://github.com/cpanel/mailman2-python3


-Jim P.

