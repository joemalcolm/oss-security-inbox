Received: (qmail 11620 invoked by uid 550); 7 Aug 2024 05:49:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11602 invoked from network); 7 Aug 2024 05:49:28 -0000
Date: Wed, 7 Aug 2024 07:49:18 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
In-Reply-To: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
Message-ID: <n703p992-486o-rp29-p19n-70pn82n5803p@vanv.qr>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
User-Agent: Alpine 2.26 (LSU 649 2022-06-02)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1


On Tuesday 2024-08-06 11:02, Neil Horman wrote:
>
>3) If the deprecated protocols are re-enabled, what would constitute a
>reasonable warning mechanism to inform users that these protocols are going
>away at some point in the future to pressure users to update to a newer,
>more secure protocol?

I think the power of warnings is overestimated (which is to say users can be
incredibly ignorant :-p)

The ERR_ buffer API could be used to convey information.
Problem I see is that, when the return code of some openssl function indicates
"success", no program exercising the openssl API will think to evaluate err
buffers at that point.

stderr seems kind of a sensible target. It is redirected in graphical
environments to e.g. ~/.xsession-errors, and I remember a time close to the end
of the 90s when /usr/bin/xconsole was started as part of a desktop experience
so you actually get to see the issues. But then desktops just stopped doing
that without replacement, which, in retrospect, was a bad choice, as it could
have been replaced by desktop notifications.
