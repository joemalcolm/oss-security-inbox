Received: (qmail 27702 invoked by uid 550); 6 May 2024 10:32:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26031 invoked from network); 6 May 2024 10:32:23 -0000
Date: Mon, 6 May 2024 12:32:22 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240506103221.GA8492@openwall.com>
References: <be713b20-5424-49d1-b2f1-42bec6a3f361@pipping.org> <a0ecb569-69dd-4dd7-8ce4-f4043a98d695@pipping.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0ecb569-69dd-4dd7-8ce4-f4043a98d695@pipping.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Fwd: uriparser 0.9.8 released, includes security fixes

Hi,

On Mon, May 06, 2024 at 12:06:18PM +0200, Sebastian Pipping wrote:
> Ealier today uriparser 0.9.8 has been released.  Version 0.9.8 fixes two
> security issues: CVE-2024-34402 and CVE-2024-34403.  For more
> details, please check out the change log [1].
> 
> If you happen to have patches for uriparser that are still required with
> 0.9.8, please send them my way.

> [1] https://github.com/uriparser/uriparser/blob/uriparser-0.9.8/ChangeLog

Let's be including vulnerability information right in here, not only via
reference, so:

  * Fixed: [CVE-2024-34402]
      Protect against integer overflow in ComposeQueryEngine
      (GitHub #183, GitHub #185)
  * Fixed: [CVE-2024-34403]
      Protect against integer overflow in ComposeQueryMallocExMm
      (GitHub #183, GitHub #186)

Thanks,

Alexander
