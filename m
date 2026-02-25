Received: (qmail 20131 invoked by uid 550); 25 Feb 2026 16:42:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18417 invoked from network); 25 Feb 2026 12:46:19 -0000
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za> <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com> <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com> <20260224203337.GA17345@openwall.com> <a0bad9ebbf4507c4@orthanc.ca> <CAA748E8-86CC-4C46-AD03-319F6690252B.1@smtp-inbound1.duck.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: kf503bla@duck.com,
 "bug-inetutils@gnu.org" <bug-inetutils@gnu.org>,
 "ron.benyizhak@safebreach.com" <ron.benyizhak@safebreach.com>,
 "simon@josefsson.org" <simon@josefsson.org>,
 "auerswal@unix-ag.uni-kl.de" <auerswal@unix-ag.uni-kl.de>,
 "justin.swartz@risingedge.co.za" <justin.swartz@risingedge.co.za>
Message-ID: <4A24F620-6FA6-4F2B-A1F9-B4781E391989.1@smtp-inbound1.duck.com>
Date: Wed, 25 Feb 2026 07:46:07 -0500
From: kf503bla@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: Cc: To: Content-Transfer-Encoding: Content-Type:
 MIME-Version: References: Subject; q=dns/txt; s=postal-KpyQVw;
 t=1772023568; bh=cksXpdouIXPaAVqOFhrBNOi/dLnwvOJOTjVr3MXmhY0=;
 b=PaPvH7QF9Z8YLMhL60Ej30LBEVi0XLqxgJvmiAc0uAI72xfV//c1vt4RT7FpfZ0yMp5zJqfPO
 rqnfZAcL7n7r/QS+C0mGhDKynGjkmkdX9LOy536YHRXmBTYvXxUqWBKu85fzfeANZxj/oVJg840
 De98V7+PU4qzVyXPuWdfctg=
Subject: Re: [oss-security] Telnetd Vulnerability Report

telnet is extremely old and just because there is still widespread use of t=
elnet or the daemon, doesn't provide a valid reason to keep using it. these=
 trivial vulnerabilities keep popping up and if you still insist of using t=
elnet, you deserve getting pwned


On Wednesday, February 25th, 2026 at 3:31 AM, Lyndon Nerenberg (VE7TFX/VE6B=
BM) <lyndon_at_orthanc.ca_kf503bla@duck.com> wrote:

> > On Tue, Feb 24, 2026 at 05:05:58AM -0500, kf503bla@duck.com wrote:
> > > Who uses telnet anyway? It's deprecated. Everyone uses ssh for any ki=
nd of
> > remote access.
>=20
> TELNET !=3D login.  Before you utter those words again in the same
> sentence, please read the Telnet RFC.  Notice how the term "login"
> appears nowhere in that document.
>=20
> Telnet is a general purpose way to obtain a remote terminal connection.
> That it is sometimes used for remote logins is simply a byproduct
> of terminals being used to remotely log in to hosts.  But it's far
> from the only thing Telnet is used for.
>=20
> --lyndon
>

