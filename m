Received: (qmail 11661 invoked by uid 550); 17 Apr 2025 17:58:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11373 invoked from network); 17 Apr 2025 17:58:30 -0000
Date: Thu, 17 Apr 2025 19:58:27 +0200
From: Solar Designer <solar@openwall.com>
To: Nick Wellnhofer <wellnhofer@aevum.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20250417175827.GA9214@openwall.com>
References: <8CED60C5-6E49-42C3-A517-33E02F74F7DE@aevum.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8CED60C5-6E49-42C3-A517-33E02F74F7DE@aevum.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Multiple vulnerabilities in libxml2

Hi,

Thank you Nick for reporting these in here!

The titles above say "buffer overflow", but information over the
provided links suggests that both are actually out-of-bounds reads.
Is this correct?

On Thu, Apr 17, 2025 at 02:34:40PM +0200, Nick Wellnhofer wrote:
> These issues are fixed in 2.14.2 and 2.13.8. Older branches won't receive official updates.
> 
> [CVE-2025-32414] Buffer overflow when parsing text streams with Python API
> https://gitlab.gnome.org/GNOME/libxml2/-/issues/889
> 
> The Python Package Index contains an outdated and unsanctioned upload based on libxml2 2.9.5 which is vulnerable. I tried to inform the PyPI maintainers but I'm not sure my message made it through.

"we return `lenread` even if it was larger than `len`! This is probably
what causes callers to read past the end of the buffer, triggering
memory errors reported by Valgrind"

> [CVE-2025-32415] Heap-based Buffer Overflow in xmlSchemaIDCFillNodeTables
> https://gitlab.gnome.org/GNOME/libxml2/-/issues/890

"This issue occurs when processing crafted xml files, leading to an
out-of-bounds read and potential application crash.
The reason is that the xmlSchemaIDCFillNodeTables function uses the -1
operation when removing duplicate entry from the IDC node-table, but
does not check the value of bind -> nbNodes. When bind -> nbNodes
becomes 0, it will cause the bind -> nodeTable array to be read out of
bounds."

Alexander
