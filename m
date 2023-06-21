Received: (qmail 20016 invoked by uid 550); 21 Jun 2023 17:13:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11285 invoked from network); 21 Jun 2023 15:44:19 -0000
X-Authentication-Warning: aneurin.horsfall.org: dave owned process doing -bs
Date: Thu, 22 Jun 2023 01:44:04 +1000 (EST)
From: Dave Horsfall <dave@horsfall.org>
To: OSS Security <oss-security@lists.openwall.com>
In-Reply-To: <CAH8yC8noq14ANkUfn9VVD0ESLey1uv_2yZCV6DX4vgmE4FUatg@mail.gmail.com>
Message-ID: <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com> <CAH8yC8noq14ANkUfn9VVD0ESLey1uv_2yZCV6DX4vgmE4FUatg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (BSF 287 2018-06-16)
X-GPG-Public-Key: http://www.horsfall.org/gpgkey.pub
X-GPG-Fingerprint: 05B4 FFBC 0218 B438 66E0  587B EF46 7357 EF5E F58B
X-Home-Page: http://www.horsfall.org/
X-Witty-Saying: "chmod 666 the_mode_of_the_beast"
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-tce-ares-id: e{60eb7cc1-9b25-456e-bebc-463263005ecf}1
X-tce-spam-action: no action
X-tce-spam-score: 0.0
X-Cm-Analysis: v=2.4 cv=C4MviyD+ c=1 sm=1 tr=0 ts=64931ac6 a=tp40vz5QK/dVXQmd7GLw7w==:117 a=tp40vz5QK/dVXQmd7GLw7w==:17 a=kj9zAlcOel0A:10 a=of4jigFt-DYA:10 a=mDV3o1hIAAAA:8 a=PxBdtxUMtuz7AsgbRBkA:9 a=CjuIK1q_8ugA:10 a=XvDEu3d0nPYA:10 a=eLk5gG4gwo8A:10 a=zZCYzV9kfG8A:10 a=M91JV_wKSCcA:10 a=_FVE-zBwftR9WsbkzFJk:22
X-Cm-Envelope: MS4xfOPnjm437cMJfMEMvg6pfu6RJCCr8S6jjD2cJvvKMvJ+XzjFZWqCQxgBuTnwbCtlu6Yfe6fiUmZ6LdivG+wZis463GA72m7kjGzzO2+nJUgA5RgptNPu iGOjWRrriDh718bz+xdb/XEaf0urn2/9oY3PmSysvZCQ5Me3xnViNOyZToJ7pBN46mzP2sWqaMlAIg==
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Wed, 21 Jun 2023, Jeffrey Walton wrote:

> Memory leaks on exit are par for the course in GNU software per
> https://www.gnu.org/prep/standards/standards.html#Memory-Usage .

Don't bother with this, don't bother with that, etc...  Call me old-school 
(which I am), but I cannot abide sloppy programming[*].

At the risk of starting a culture war, that is one of the reasons why I 
avoid GNU libraries whenever possible.

[*]
And don't even mention "AI-generated code".

-- Dave
