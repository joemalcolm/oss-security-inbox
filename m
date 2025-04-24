Received: (qmail 9456 invoked by uid 550); 24 Apr 2025 18:32:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8032 invoked from network); 24 Apr 2025 18:32:16 -0000
Date: Thu, 24 Apr 2025 20:32:09 +0200
From: Solar Designer <solar@openwall.com>
To: =?utf-8?B?55Sw5LiW5p6X?= <tianshilin@deepin.org>
Cc: oss-security <oss-security@lists.openwall.com>
Message-ID: <20250424183209.GA22610@openwall.com>
References: <tencent_11C8C35C2CF529292F8447A8@qq.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <tencent_11C8C35C2CF529292F8447A8@qq.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-3512: Qt Base QTextMarkdownImporter Front Matter Buffer Overflow

Hi,

Thank you for bringing this to oss-security!  As I also communicated
privately, as a moderator I had to repair this message's content prior
to approving it because the text/plain section was garbled to the point
of being unreadable.  This is why the delay (message received April 22,
approved April 24).  However, I did not edit any of the content beyond
making it look right in text/plain, so I post this follow-up instead:

On Tue, Apr 22, 2025 at 11:36:46AM +0000, 田世林 wrote:
> A heap buffer overflow vulnerability exists in `QTextMarkdownImporter`.
> When parsing the front matter of a Markdown file, the code assumes that
> more characters (e.g., a newline) will be present in the input after
> finding the closing marker `---`. However, if the input stream ends with
> the `----` delimiter and lacks a trailing newline, calling
> `QStringView::sliced()` will attempt to access characters beyond the end
> of the string, causing the program to crash.

This reads like it's an out-of-bounds read, _not_ a buffer overflow - or
if it somehow _is_ a buffer overflow, then the description is lacking.

Can we please try and label vulnerabilities correctly?  There appears to
be a growing trend towards calling OOB reads "buffer overflows".  Just
this month on oss-security, we saw this for a giflib bug and then for
two libxml2 bugs, and now QTextMarkdownImporter is like the fourth with
this same kind of mis-labeling in here this month.

Thanks, and sorry for maybe sounding negative - I don't mean to be.

Alexander
