Received: (qmail 2034 invoked by uid 550); 28 Dec 2022 10:44:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11617 invoked from network); 28 Dec 2022 00:45:04 -0000
From: "Lyndon Nerenberg (VE7TFX/VE6BBM)" <lyndon@orthanc.ca>
To: oss-security@lists.openwall.com
cc: Alejandro Colomar <alx.manpages@gmail.com>,
    Michael Kerrisk <mtk.manpages@gmail.com>,
    linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
In-reply-to: <Y6TUJcr/IHrsTE0W@codewreck.org>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
Comments: In-reply-to Dominique Martinet <asmadeus@codewreck.org>
   message dated "Fri, 23 Dec 2022 07:03:17 +0900."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <93771.1672188289.1@orthanc.ca>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 27 Dec 2022 16:44:49 -0800
Message-ID: <1a1963aa1036ba07@orthanc.ca>
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat correctly

Dominique Martinet writes:

> But, really, I just don't see how this can practically be said to be pars=
able...

In its current form it never will be.  The solution is to place
this variable-length field last.  Then you can "cut -d ' ' -f 51-"
to get the command+args part (assuming I counted all those fields
correctly ...)

Of course, this breaks backwards compatability.

--lyndon
