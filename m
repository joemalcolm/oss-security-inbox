Received: (qmail 26477 invoked by uid 550); 14 May 2024 19:34:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1080 invoked from network); 14 May 2024 18:42:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1715712113; x=1716316913;
	i=johannes.schindelin@gmx.de;
	bh=3ofQ1pc3J+bNU0YF5Muinu9pai6Ymn/uE5fR51r8ogU=;
	h=X-UI-Sender-Class:Date:From:To:cc:Subject:Message-ID:
	 MIME-Version:Content-Type:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=Otzrbde1NBlRhdBdzwXt4mZ3zlOmb6BJH4oK5caIF9EwjHWLlqpHxhTWaN0t35N9
	 iPQk15ietApsolmumhbq2PyBRHQfSItzh9QdVPwByOuilbZKMTjAVCw8LuxzJgmaG
	 amkAJSMovRDPJ/V9VrUiJnztpCRlGQu8gkQe/Auha6MmFhxD3Bb0xH8pHCZ6QqvYA
	 q9GZdJtgFtJfsMudVpyFfSKZe0KvxTjB6qp3fHpFfY5jCNU1oT+P2IbgpLWAcJNvO
	 iBG/1umWgKCbpxWgZtYVnfI6slkl32Vz0FAtaK8DlmwEvzv82+PC1L8msCFHwqE7T
	 29saAwn9DfW89DDrhw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Date: Tue, 14 May 2024 20:41:51 +0200 (CEST)
From: Johannes Schindelin <Johannes.Schindelin@gmx.de>
To: oss-security@lists.openwall.com
cc: git-security@googlegroups.com, Junio C Hamano <gitster@pobox.com>, 
    Patrick Steinhardt <ps@pks.im>, Filip Hejsek <filip.hejsek@gmail.com>, 
    Jeff King <peff@peff.net>
Message-ID: <c228aaed-cc97-b0b2-38ad-bc0eb3f3135e@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Provags-ID: V03:K1:cexOsHKLm6s4Q62aunH6koQ1BtEB6mwlvJr4Rvylq/IHaG3fABQ
 ju0ugYw4oYBTlbJrR4cmGduzupmrTlGQ5IK8qHbnfAafH+hkajbOEX0A4HHhTfB0wayzvPw
 HnXauf6NuU23j/Lve0jATHr3zpBshwJD7Ttw26b1ZckPh8vA5eSlIfKSeFxwxjRvG73r9DT
 8NU7/Sgull/qFbrz+rFoA==
UI-OutboundReport: notjunk:1;M01:P0:p1HvOY4huNQ=;2QXVl624tcDHgCDE20xGeAoPEU/
 2DpkcrCnZqfTNo6M4zhvj9zdt7LMhmXBVM/9wffDBoAc+Tm2Je1VS8haRxw1o12e8SUd7yumu
 MP7VctXmv1RJ2c1pAvqU0jfZRW3sFGqVBO9w570kB6xaZs0XY6745QifUk94xK/7KAXMUWigL
 0qNdutytHABCFlm6Z4Bcri45/53W278tiCicIdtPRlfCGkPO8ZiWxq+O8f7F/XIoLS4xhoQjJ
 oCfYMFNU0bylX+fU5c4eO6WyCQydvvsCOFTp1iS9GUtvZHJEnEet1Hmg0mgp57YCLjVYmSYUR
 hMOd39ovzZEuN5RIyONi4Zn0eKQ3YKGec3g6Ug6ObQwKK03Sslt9s6EA1fbij/E3JWaeLf4g2
 05LBxkGq+7mYQO/CdssjSPofmOh1Cy8dcDBL165tNq+lR2ofqa2Ug5pfDcNpAzz4yC8/SXrSO
 7fq4CGy4xt5FfY1oU6iCkFgsRnnbRdweES1n7QM4bNtdbrb1sCCGcTU5+XCT6+lBYfy+hgF44
 1G53gQeTK3iyeO3CG1skp+dKY6iPcyxK+Ai3saRggFoaiH2PMdzW6pWDoPo9Vg4D9Z6KQMKAr
 UDJH8h+7i4uxRHQjDL2Y3+Um8HvDIkSweF86YNg1hwneyk3/b0HmN7pqedzxn6P2mmgNUI2K3
 si4od0hVB4HSt9f5VJUBnPwmWCyOHqKKl+q780vJrSjPrV8PVKrNEBGOp+XH+FXLpfGHgFi5w
 rKx2op7syInt9rfkWAKLUmBfiAHndo9mQ8XaOyg7zW/sHDL4NqNFt24kqP9si8erBdvBZ74tu
 6hoEpNQFvTSmb1dNVxYaKj7r7JPMioJvNcwCzKv4qEBz4=
Subject: [oss-security] git: 5 vulnerabilities fixed

Team,

The Git project released new security bug-fix versions today, May 14th,
2024: v2.45.1, v2.44.1, v2.43.4, v2.42.2, v2.41.1, v2.40.2, and v2.39.4.

The addressed issues are:

 * CVE-2024-32002
 * (https://github.com/git/git/security/advisories/GHSA-8h77-4q3w-gfgv):

   Recursive clones on case-insensitive filesystems that support symbolic
   links are susceptible to case confusion that can be exploited to
   execute just-cloned code during the clone operation.

   This allows the attack where a recursive clone would first initialize a
   submodule, then replace its parent directory with a symbolic link into
   the `.git/` directory where the second stage of the recursive clone
   would then write e.g. hooks that would be immediately executed before
   the user has had a chance to inspect what is getting executed.

   Credit for finding the vulnerability goes to Filip Hejsek, credit for
   fixing it goes to Johannes Schindelin.

 * CVE-2024-32004
 * (https://github.com/git/git/security/advisories/GHSA-xfc6-vwr8-r389):

   Repositories can be configured to execute arbitrary code during local
   clones. To address this, the ownership checks introduced in v2.30.3
   are now extended to cover cloning local repositories.

   The most obvious attack vector is to prepare a local partial clone that
   is intentionally missing objects, override in its config what
   `upload-pack` executable use, and then talk another user on the same
   machine to clone that. This will run that configured `upload-pack`
   executable under using person's permissions.

   Credit for finding the vulnerability goes to Filip Hejsek, credit for
   fixing it goes to Johannes Schindelin.

 * CVE-2024-32020
 * (https://github.com/git/git/security/advisories/GHSA-5rfh-556j-fhgj):

   Local clones may end up hardlinking files into the target repository's
   object database when source and target repository reside on the same
   disk. If the source repository is owned by a different user, then
   those hardlinked files may be rewritten at any point in time by the
   untrusted user.

   This vulnerability allows a bait-and-switch attack where individual
   objects are replaced in already-indexed pack file; Git will not verify
   that the object's contents match its recorded object ID in that case.

   Credit for finding and for fixing the vulnerability goes to Patrick
   Steinhardt.

 * CVE-2024-32021
 * (https://github.com/git/git/security/advisories/GHSA-mvxm-9j2h-qjx7):

   When cloning a local source repository that contains symlinks via the
   filesystem, Git may create hardlinks to arbitrary user-readable files
   on the same filesystem as the target repository in the objects/
   directory.

   This allows the same attack vector that CVE-2022-39253 tried to
   prevent, by exploiting a time-of-check-time-of-use race.

   Credit for finding and for fixing the vulnerability goes to Patrick
   Steinhardt.

 * CVE-2024-32465
 * (https://github.com/git/git/security/advisories/GHSA-vm9j-46j9-qvq4):

   It is supposed to be safe to clone untrusted repositories, even those
   unpacked from zip archives or tarballs originating from untrusted
   sources, but Git can be tricked to run arbitrary code as part of the
   clone.

   The attack vectors are the same as for the CVEs mentioned above that
   involve local clones, but social-engineering is required to manipulate
   a user into unpacking a `.zip` file and running Git commands on the
   unpacked files.

   Credit for finding and for fixing the vulnerability goes to Jeff King.

Note: the defense-in-depth protection in these new Git versions causes a
regression when cloning repositories enabled with Git LFS. The clone will
fail with an error message. The remedy is to call `git lfs pull` in the
fresh clone.

Thanks,
Johannes

