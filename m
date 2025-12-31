Received: (qmail 20173 invoked by uid 550); 31 Dec 2025 20:47:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5838 invoked from network); 31 Dec 2025 20:45:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1767213937; x=1767880603; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=xHHeu4boARd5pL7Tn0Fm8Mf1inyTSBUWC54NBdnkX+M=;
 b=g9rdPL0qRzbAN6blALjq1MzZiRhxE0IZy1QOilB0kDJ4+WS27pdpZhhchpf/SQqR3dq7H7fF
  aF5IeLugLF7ObJj09q13//q1ggqE2+c7qbXdlwOyALfnqqRt5T3EaKPfcXU+R6mB3DJ/Lxf3zy
  4I2dtIhXOaWsErVYiXCSALXTJkZTqimVps6NFD4/KaMWZPpsDbUn9t/pTnTsD8Ck1tSp8GUd/I
  hbJZoZbBoCwXQTItDqifPCpUr6YiCgEZzux56dhr3MMdtvTxcrZWm0NjOXn8auQYvRB7Y0jttJ
  u+M5iAgx4CRzNpBYfN3jftpfMhCY+69P4xo0dVRigO5FWGSw==
Date: Wed, 31 Dec 2025 21:45:36 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20251231204536.HyhsCcuj@steffen%sdaoden.eu>
In-Reply-To: <878qei6bq7.fsf@josefsson.org>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-743-g1489053f65-dirty
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Best practices for signature verifcation

Simon Josefsson wrote in
 <878qei6bq7.fsf@josefsson.org>:
 |"What to use instead?" is indeed the bigger question, and it get lost in
 |all the GnuPG bashing.  To my mind, the alternatives are in a seriously
 |worse state than GnuPG is in.  So in some sense, the practical
 |consequence of moving away from GnuPG is to weaken people's security,
 |which is something to consider when giving advice here.  I think we
 |should all be worried about this state of affairs, and try to improve
 |things, instead of telling people to stop using strong proven solutions.
 |
 |A small survey:
 |
 |1) X509 with CMS/PKCS#7 - I'm happy that few appear to seriously
 |consider this, since that ecosystem have almost all of PGP's flaws but
 |add tons of more complexity to run attacks through.
 |
 |2) Special-purpose tools like Minisign, signify, ed25519-cli, and

 |saltpack.  Typically lacks a stable specification and/or decentralized

I feel saltpack does not fit the others here.

 |process to pave the way to add PQ options.  Often lacks protocol
 |specifications for MIME integration, file format conventions, and
 |sometimes lack multiple interoperable implementations.

That.  But below.

 |3) Age.  Modern design with multiple implementations and decent
 |documentation.  Lacks sign+verify.  Lacks MIME interaction.

Saltpack fits more this one regarding design i would think.
Unfortunately no ISO C, only Go and Python.  Ah that was Age.
(If hard-g, it sounds like "Ah, Geh!" in German, fwiw.)

Ok -- but then again, we just recently have seen "unobtrusive
signatures" becoming reality very fast, finally even bringing
AutoCrypt to some perceivable sense (if implemented like
Kahn-Gillmor did it, and imho).

Isn't it just "fork what you have into a multipart, and append
a signature" in the end.

Safe and easy (best TLS-less) key distribution is a problem,
S/MIME does this well with having the possibility to extract
a usable public key from the signature, in my opinion.
How this will work with large PQ key pairs, i do not know.

(DNS records are a good thing, but not what we have, SMIMEA and
such, one needs to be able to place them in the DNS, and that one
should be everyone, not every nerd with super provider or own name
server.)

 |4) SSH signatures.  Reasonable minimal design, multiple implementations,
 |integration into Git, IETF standardization work in progress [1] and some
 |PQ drafts [2] [3].  Lacks MIME integration.  No encryption support.  I
 |wish 'age' supported SSH signatures to make this format more popular.
 |
 |5) XMLDigSig and JSON Web Signatures.  (I hope I manage to provoke both
 |communities by placing these two in the same category.)  Reasonably well
 |specified with multiple implementations, although suffering from
 |non-minimal design and canonicalization concerns.  The toolchain to work
 |with these blobs is often web-oriented and primitive implementations are
 |lacking, making it less suitable for low-level software supply-chain
 |integrity protection.  For JSON some PQ alternatives exist.  Both
 |ecosystems are negatively tainted by the X.509 WebPKI complexity.
 |
 |6) Sigstore and Sigsum.  (I hope I provoke both camps here too :)) These
 |are modern designs that realize that signatures without transparency is
 |not effective against practical attacks.  Reasonable well specified,
 |although lacking in multiple implementations and PQ options.  Sigstore
 |suffer from complexity and its focus on container security.  Sigsum
 |suffer from lack of non-Go implementations and MIME integration.
 |
 |7) Non-GnuPG PGP implementations.  This offers a simple migration path,
 |and some have already taken it.  The complexity of PGP is still present,
 |and most of the attacks are consequences of the PGP design rather than
 |GnuPG problems.  GnuPG is shipping PQ options already and the others are
 |catching up, but the PGP schism is likely to cause continued eco-system
 |self-harm.  While one could have hoped for something here, I'm not sure
 |if this offers enough beyond a non-GPL license.
 |
 |Did I forget some option?

You forgot for example that the some so-called email people of the
IETF want to introduce a DKIM2 that turns SMTP envelope into long
term storage, and (at least partially) counteracts what eg
saltpack etc try to achieve with their "hidden recipients"
approach.  Eg, one needs a private key to be able to recognize
oneself as a recipient.

 |Personally, I'm staying with GnuPG using Ed25519 keys on physical
 |hardware dongles and I'm adding Sigsum, using a different Ed25519 key on
 |the same physical device, see a GNU InetUtils release --
 |https://lists.gnu.org/archive/html/bug-inetutils/2025-12/msg00017.html
 |-- for inspiration.  I will help with SSH Signature standardization and
 |PQ options, since I believe SSH Signatures is the approach that is
 |nearest a IETF-level standardization maturity.  I hope/encourage that
 |Sigsum will add PQ options, a C+Python implementation, and resolve MIME
 |integration -- and that Sigstore will continue to offer a challenging
 |popular competitor.  I believe that Ed25519+SLH-DSA is the best
 |near-term PQ variant for long-term software protection, alas no
 |practical tools offers this today.
 |
 |/Simon
 |
 |[1] https://datatracker.ietf.org/doc/html/draft-josefsson-sshsig-format-03
 |[2] https://datatracker.ietf.org/doc/html/draft-josefsson-ssh-sphincs-01
 |[3] https://datatracker.ietf.org/doc/html/draft-josefsson-ssh-ed25519mld\
 |sa65-01
 |
 |kf503bla@duck.com writes:
 |
 |> then what do you suggest to use? i hear it all the time "pgp sucks" \
 |> but what's the alternative huh?
 |>
 |>> 
 |>> In light of the recent GnuPG vulnerabilities, I remembered that OpenPGP
 |>> is almost never the right choice. CMS/PKCS#7 isn't any better, and
 |>> X.509 is also bad except that its extremely wide deployment in TLS
 |>> keeps it alive.
 |>> 
 |>> See https://www.latacora/com/blog/2019/07/16/the-pgp-problem/
 |>> 
 |>> and https://soatok.blog/2024/11/15/what-to-use-instead-of-pgp/.
 |>> 
 |>> --
 |>> Sincerely,
 |>> Demi Marie Obenour (she/her/hers)
 --End of <878qei6bq7.fsf@josefsson.org>

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
