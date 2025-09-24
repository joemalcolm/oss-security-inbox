Received: (qmail 7338 invoked by uid 550); 24 Sep 2025 14:43:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31968 invoked from network); 24 Sep 2025 05:33:13 -0000
Date: Wed, 24 Sep 2025 15:32:35 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
To: "Adiletta, Andrew" <ajadiletta@wpi.edu>
cc: Solar Designer <solar@openwall.com>,
        "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        "openssh@openssh.com" <openssh@openssh.com>,
        "Tol, Caner" <mtol@wpi.edu>, "Sunar, Berk" <sunar@wpi.edu>,
        "Doroz, Yarkin" <ydoroz@wpi.edu>,
        "Todd C. Miller" <Todd.Miller@courtesan.com>,
        "pgut001@cs.auckland.ac.nz" <pgut001@cs.auckland.ac.nz>
In-Reply-To: < BL1PR01MB772308134BF946DF07159A05C11CA%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au>
Message-ID: <c5d66517-f422-1fe7-03a0-d79cf4af1fbf@mindrot.org>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org> <20250923032113.GA14348@openwall.com> < BL1PR01MB772308134BF946DF07159A05C11CA%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="0-621254645-1758690352=:30621"
Content-ID: <0a9844fb-835b-c36e-5cdf-783508e64f51@mindrot.org>
x-ms-reactions: disallow
X-Scanned-By: MIMEDefang 2.75 on 130.102.79.58
Subject: Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

--0-621254645-1758690352=:30621
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <7e10eabd-e71e-fe08-537a-3580e513c22b@mindrot.org>

On Wed, 24 Sep 2025, Adiletta, Andrew wrote:

> Hi Alexander and Team,
> 
> Thank your for the interest in our paper, and we appreciate all the
> feedback. We wanted to address two points - the OpenSSH CVE, and the
> comments from the OpenSSH community about the practicality of the attack. 
> 
> On CVE-2023-51767 (OpenSSH), we did not submit this CVE. Our team
> coordinates with vendors / software mantainers before submitting CVEs to
> make sure there is agreement. The CVE description does seem
> mischaracterized, as this is not a zero-click type vulnability as the CVE
> suggests, and we would not oppose either a revision or other action. We did
> work with Todd Miller on a SUDO CVE (CVE-2023-42465), of which we worked
> with him to release a patch. 
> 
> However, on the practicality, I do believe that we did not mischaracterize
> the attack in the paper, and as Alexander concisely mentioned, we are really
> trying to emphasize the issues with simple 0/1 flag logic that leads down to
> sensitive execution flows. 

Sure, but my criticism at the time was that your paper claimed in
the abstract to have successfully attacked OpenSSH to bypass
authentication but what was actually attacked was a modified version
of sshd run in a highly unrealistic and synchronised setting.

IMO this context matters and doesn't detract from your findings.

-d
--0-621254645-1758690352=:30621--
