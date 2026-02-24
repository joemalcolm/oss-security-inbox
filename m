Received: (qmail 21582 invoked by uid 550); 24 Feb 2026 21:59:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12085 invoked from network); 24 Feb 2026 20:48:25 -0000
From: "Lyndon Nerenberg (VE7TFX/VE6BBM)" <lyndon@orthanc.ca>
To: oss-security@lists.openwall.com
cc: kf503bla@duck.com, "bug-inetutils@gnu.org" <bug-inetutils@gnu.org>,
    "ron.benyizhak@safebreach.com" <ron.benyizhak@safebreach.com>,
    "simon@josefsson.org" <simon@josefsson.org>,
    "auerswal@unix-ag.uni-kl.de" <auerswal@unix-ag.uni-kl.de>,
    "justin.swartz@risingedge.co.za" <justin.swartz@risingedge.co.za>
In-reply-to: <20260224203337.GA17345@openwall.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za> <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com> <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com> <20260224203337.GA17345@openwall.com>
Comments: In-reply-to Solar Designer <solar@openwall.com>
   message dated "Tue, 24 Feb 2026 21:33:37 +0100."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <76045.1771966094.1@orthanc.ca>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Feb 2026 12:48:14 -0800
Message-ID: <a0bad9ebbf4507c4@orthanc.ca>
Subject: Re: [oss-security] Telnetd Vulnerability Report

> On Tue, Feb 24, 2026 at 05:05:58AM -0500, kf503bla@duck.com wrote:
> > Who uses telnet anyway? It's deprecated. Everyone uses ssh for any kind=
 of=20
> remote access.

TELNET !=3D login.  Before you utter those words again in the same
sentence, please read the Telnet RFC.  Notice how the term "login"
appears nowhere in that document.

Telnet is a general purpose way to obtain a remote terminal connection.
That it is sometimes used for remote logins is simply a byproduct
of terminals being used to remotely log in to hosts.  But it's far
from the only thing Telnet is used for.

--lyndon
