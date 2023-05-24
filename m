Received: (qmail 8060 invoked by uid 550); 24 May 2023 19:03:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11946 invoked from network); 24 May 2023 18:40:34 -0000
Date: Wed, 24 May 2023 11:40:18 -0700 (PDT)
From: Brian Behlendorf <brian@behlendorf.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CA+aC4ksAirMkOW5R1p=YzQH6R3gOBJZsiB2YqjH+sB+by2--pw@mail.gmail.com>
Message-ID: <0400b167-9673-ae6f-19d4-379b0f40f0d5@behlendorf.com>
References: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com> <20230511115704.GJ5725@suse.de> <ZG3Om+8ySRpIuHJu@pisco.westfalen.local> <20230524134130.GC6775@openwall.com> <CA+aC4ksAirMkOW5R1p=YzQH6R3gOBJZsiB2YqjH+sB+by2--pw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: Re: [oss-security] Clarification on embargoed testing in a partner
 cloud

On Wed, 24 May 2023, Anthony Liguori wrote:
> I think the right policy for list members is that they are responsible for
> understanding the third-party infrastructure they use and if they aren't
> confident that they can maintain the rules of the list, they shouldn't use
> it.

We've known since "On Trusting Trust" that every variable consumed during 
the SDLC is a vector for compromise, even in very subtle and difficult 
(impossible? halting problem?) ways to defeat. Inevitably we need to rely 
on self-attestation, paired with certification processes when called for 
(e.g. FedRamp). There is emerging regulatory action, at least in the US 
(see the new White House Cybersecurity Policy) and the EU's CRA, calling 
for the establishment of clear processes for demonstrating provenance and 
attestation to at least the build environment and likely eventually the 
full SDLC.

A clear and more formal way of understanding the different levels of 
attestation of one's build environment can be found in the SLSA 
specification. Here's a story about how Google Cloud incorporates it into 
build service:

https://slsa.dev/blog/2022/12/gcb-slsa-verification

Of course attestation is not proof, and even human certification can only 
go so far. Reproducible builds offer a path there but that goal seems just 
as far away as it was 20 years ago, when Java was going to solve that for 
us.

I have no recommendation on if or how to use SLSA or something like it in 
this policy, just that it may be something to consider.

Brian
