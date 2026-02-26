Received: (qmail 11487 invoked by uid 550); 27 Feb 2026 00:40:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31779 invoked from network); 26 Feb 2026 19:20:59 -0000
From: "Lyndon Nerenberg (VE7TFX/VE6BBM)" <lyndon@orthanc.ca>
To: oss-security@lists.openwall.com, Albert Veli <albert.veli@gmail.com>
In-reply-to: <4459c96c-dabb-4bd8-882c-1f9495972a51@gmail.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za> <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com> <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com> <20260224203337.GA17345@openwall.com> <a0bad9ebbf4507c4@orthanc.ca> <CAA748E8-86CC-4C46-AD03-319F6690252B.1@smtp-inbound1.duck.com> <4A24F620-6FA6-4F2B-A1F9-B4781E391989.1@smtp-inbound1.duck.com> <a0bae10a8982d3e5@orthanc.ca> <4459c96c-dabb-4bd8-882c-1f9495972a51@gmail.com>
Comments: In-reply-to Albert Veli <albert.veli@gmail.com>
   message dated "Thu, 26 Feb 2026 09:30:07 +0100."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <24171.1772133645.1@orthanc.ca>
Date: Thu, 26 Feb 2026 11:20:45 -0800
Message-ID: <a0bae914813cc517@orthanc.ca>
Subject: Re: [oss-security] Telnetd Vulnerability Report

Albert Veli writes:

> I agree to this, but I can add that telnet remains widely used for login 
> in OT (Operational Technology) environments, including sites running 
> critical infrastructure. While operators often justify this by relying 
> on network isolation, this reasoning breaks down the moment the air gap 
> is bridged.

True, but I suspect that many of those implementations are running
in firmware that has been long abandonded.  So if you are going to
craft a CVE on this, how do you address those legacy systems?  Or
should a CVE even be written for them, if there is no hope of ever
updating the code?

We have to accept that there are cases where the problem simply
cannot be fixed.  At best we can identify them, and warn users of
that gear that they have an unrepairable vulnerability that must
be addresses independtly.  It boils down to "identify and warn."

It's important to not get caught up on unsolvable problems.  An
awful lot of time gets burned up trying to solve things that can't
be.

--lyndon
