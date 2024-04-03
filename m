Received: (qmail 3161 invoked by uid 550); 3 Apr 2024 13:04:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13917 invoked from network); 3 Apr 2024 03:31:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1712115081; x=1712374281;
	bh=CwN7vehb8oTgdDc2iWfvygCI/nQQTgUkwjx0dN4qoxU=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=T9UcwVT6/69EU0aDGoVHjupyJequvTp7V4VuoDBQ1vWDMcCxU3gp+fqoYNQ4a0/iI
	 H7TrBsLVEJuuX53yzZouOjHX0tiEnZbjwSaQvmJ864aBmXNR4CdtRCYLD2WdfAXnVU
	 K69f0a/ekAIj6fY1ml3uW7kJxyYMACNdK4GvYbg5T3PnkinYI7hp4ELXqVy/4PtxAA
	 QngeHwS6TIbj/H6jUphdVZXuSTd8Y5343lptnH1YJ0g+JRhsmOt8feQjpegw/ObjvY
	 BTYtliwTSlVfdmUTu0h2VwGXBi4l8HIF9kX+QX8duuq6A6EPhbnBfjuliZ95Wl5rWk
	 dcWd6nKZnTqAQ==
Date: Wed, 03 Apr 2024 03:31:15 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Nick Sal <specialroumpa@proton.me>
Message-ID: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
Feedback-ID: 95722247:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] xz backdoor prevention using hosts.deny?

Hi,

Assume we filter SSH access only to a public domain subnet using the files =
hosts.{deny,allow} as seen below.
Would this prevent an attack if a malicious payload was *not* sent from the=
 allowed subnet?
Trying to figure out if an attack like this was still possible, for the few=
 days in March the backdoor was active and undetected in rolling distros (e=
.g. debian testing).

/etc/hosts.deny:  sshd: ALL
/etc/hosts.allow: sshd: "a_subnet"

Moreover, allowing only public-key authentication for SSH does not help, is=
n't this right?

Regards,
Nick

