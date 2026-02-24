Received: (qmail 1428 invoked by uid 550); 24 Feb 2026 23:32:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30377 invoked from network); 24 Feb 2026 23:01:18 -0000
Date: Wed, 25 Feb 2026 00:01:08 +0100
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20260224230108.GK3223@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de>
 <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
 <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
 <20260224203337.GA17345@openwall.com>
 <a0bad9ebbf4507c4@orthanc.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a0bad9ebbf4507c4@orthanc.ca>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.3+4 (71f3e314) vl-169878 (2026-01-27)
Subject: Re: [oss-security] Telnetd Vulnerability Report

On 2026-02-24 12:48:14 -0800, Lyndon Nerenberg (VE7TFX/VE6BBM) wrote:
> > On Tue, Feb 24, 2026 at 05:05:58AM -0500, kf503bla@duck.com wrote:
> > > Who uses telnet anyway? It's deprecated. Everyone uses ssh for any kind of 
> > remote access.
> 
> TELNET != login.  Before you utter those words again in the same
> sentence, please read the Telnet RFC.  Notice how the term "login"
> appears nowhere in that document.

Here, this is not just about telnet, but about telnetd, which
involves a login process:

https://man.freebsd.org/cgi/man.cgi?query=telnetd&sektion=8&format=html

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
