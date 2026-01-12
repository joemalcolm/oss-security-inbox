Received: (qmail 9507 invoked by uid 550); 12 Jan 2026 13:31:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9814 invoked from network); 12 Jan 2026 09:42:43 -0000
Date: Mon, 12 Jan 2026 10:42:33 +0100 (CET)
From: Jan Engelhardt <ej@inai.de>
To: oss-security@lists.openwall.com
cc: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
Message-ID: <9151rn19-0on4-96s6-p3oq-qq07188p9n0r@vanv.qr>
References: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com> <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
User-Agent: Alpine 2.26 (LSU 649 2022-06-02)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Subject: Re: [oss-security] Null Pointer Dereference in HarfBuzz


On Monday 2026-01-12 04:09, Jacob Bachmeyer wrote:
>
> In short, this is a crash bug, but not a security issue.  This is different
> from (for example) a parser bug that results in NULL being dereferenced if
> crafted input is processed.
>
> Are we now using CVE IDs as some kind of global bug tracker?

Isn't that how the Linux kernel works these days,
as per <https://docs.kernel.org/process/cve.html>:

"almost any bug might be exploitable to compromise the security of
the kernel, but the possibility of exploitation is often not evident
when the bug is fixed"
