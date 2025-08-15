Received: (qmail 24422 invoked by uid 550); 15 Aug 2025 19:41:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20091 invoked from network); 15 Aug 2025 18:46:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1755283556; x=1755542756;
	bh=R9bAN/WK8bp42fiRNW+qxSfV4QHQfJYwtgnuv1cChkM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=LbBb9sb5Qb6ChcX3NQAMYBb2EJafFltms6hS3bMnzbW1Fcm/5dkrrzTu5kWFRk1lP
	 sbgNMMNLIVEm3RJ4klAlc3A2QiToYC6uIcOS+apMOM1nCS++EmbyHOtCsifBwN7Aws
	 kkyD+PRVcZFwQ5zFTDg9CIY7zlFRUF5pHA2ZBcsfMWhkXD7sM6uLyyoOFYE1UMrUVR
	 D7ua0ItvGcg+gq1j6VG9b0a8KQiz6gdXYyFvBelkXnt2G4X1aw3YSO3bPCDfRbHlOw
	 8q72RSzOj2jp7vvnuILlXhi+mimN3gL87WvZVVF2ok8xI15AyU4Y2YO/aq8BWjXp5+
	 LUvvdj4Gj6TKg==
Date: Fri, 15 Aug 2025 18:45:53 +0000
To: Demi Marie Obenour <demiobenour@gmail.com>
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Cc: oss-security@lists.openwall.com, =?utf-8?Q?Martin_Storsj=C3=B6?= <martin@martin.st>, Sam James <sam@gentoo.org>
Message-ID: <K6FWV_Ak_epVQ-V7_CwT7CSTruGEsU7zXBhkL-zb5tIeXnMHHbprfzhezbJXOy5kvy2bSuliCID3BcgEzc965uwVQfG9aMejj-073UZdoHA=@protonmail.ch>
In-Reply-To: <23122e80-8121-4f0f-b2eb-31ad3cdcc031@gmail.com>
References: <96CyiraLAnPDJzOP_843DWxB6OLVKixbKk_TPt0Ik3wR_q7LD7MlEhzrTbuyEKz20H1NzPHuUp_SbNWe_WMoPf0xslBJ6Atp4gyO5bXOPJU=@protonmail.ch> <87qzxeljdu.fsf@gentoo.org> <84dc77b-13c5-5aa-e066-31db6de18e2@martin.st> <23122e80-8121-4f0f-b2eb-31ad3cdcc031@gmail.com>
Feedback-ID: 3367390:user:proton
X-Pm-Message-ID: e1c7b49cc7b34b9335f3e383c281d52bc4867583
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Question about (in)security of fdk-aac-free in linux distros

On Friday, August 15th, 2025 at 6:44 PM, Demi Marie Obenour <demiobenour@gm=
ail.com> wrote:

> What is your recommendation to distro maintainers? My understanding is
> that the full codec is included in the flathub runtimes but am not sure.
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)

No, flathub runtime shipped the fdk-aac-free version but removed it in curr=
ent master
branch. I linked to exact commit in first post. AFAIK it's not released yet.

Jordan
