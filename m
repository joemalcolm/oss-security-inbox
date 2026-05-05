Received: (qmail 20022 invoked by uid 550); 5 May 2026 18:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9733 invoked from network); 5 May 2026 18:27:56 -0000
Date: Tue, 5 May 2026 20:27:25 +0200
From: Solar Designer <solar@openwall.com>
To: Eric Covener <covener@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20260505182725.GA27198@openwall.com>
References: <e6a48645-bb78-c3df-755f-56456a8e58f3@apache.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6a48645-bb78-c3df-755f-56456a8e58f3@apache.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2026-29169: Apache HTTP Server: mod_dav_lock indirect lock crash

On Mon, May 04, 2026 at 02:15:25PM +0000, Eric Covener wrote:
> Severity: low 
> 
> Affected versions:
> 
> - Apache HTTP Server through 2.4.66
> 
> Description:
> 
> A NULL pointer dereference in mod_dav_lock in Apache HTTP Server 2.4.66 and earlier may allow an attacker to crash the server with a malicious request.mod_dav_lock is not used internally by mod_dav or mod_dav_fs.
> 
> The only known use-case for mod_dav_lock was mod_dav_svn from Apache Subversion earlier than version 1.2.0.
> 
> Users are recommended to upgrade to version 2.4.66, which fixes this issue, or remove mod_dav_lock.

As confirmed by Eric off-list, the above line is erroneous.  It should
say "upgrade to version 2.4.67", not 2.4.66.  The website has it right:

https://httpd.apache.org/security/vulnerabilities_24.html

"Users are recommended to upgrade to version 2.4.67, which fixes this
issue, or remove mod_dav_lock."

> Credit:
> 
> Pavel Kohout, Aisle Research, Aisle.com (finder)
> 
> References:
> 
> https://httpd.apache.org/security/vulnerabilities_24.html
> https://httpd.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2026-29169
> 
> Timeline:
> 
> 2026-03-04: Report received
> 2026-05-04: 2.4.67 released
> 2026-05-04: fixed in 2.4.x by r1933354

Alexander
