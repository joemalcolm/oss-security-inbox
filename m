Received: (qmail 12025 invoked by uid 550); 14 Feb 2024 13:03:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11798 invoked from network); 14 Feb 2024 13:02:54 -0000
Date: Wed, 14 Feb 2024 14:05:51 +0100
From: Solar Designer <solar@openwall.com>
To: Daniel Gaspar <dpgaspar@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20240214130551.GA6234@openwall.com>
References: <a9ae2b3b-4219-353d-9498-df65663cf774@apache.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a9ae2b3b-4219-353d-9498-df65663cf774@apache.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2024-23952: Apache Superset: Allows for uncontrolled resource consumption via a ZIP bomb (version range fix for CVE-2023-46104)

Hi Daniel,

On Wed, Feb 14, 2024 at 11:03:06AM +0000, Daniel Gaspar wrote:
> Affected versions:
> 
> - Apache Superset before 2.1.3
> - Apache Superset 3.0.0 before 3.0.2
> 
> Description:
> 
> This is a duplicate for CVE-2023-46104. With correct CVE version ranges for affected Apache Superset.

This looks like misuse of CVE, and it only made things worse.  Now you
need not only to update the original CVE's description, but also get
this new CVE formally REJECT'ed as duplicate.  You might need assistance
from others at Apache to get this right.

> Uncontrolled resource consumption can be triggered by authenticated attacker that uploads a malicious ZIP to import database, dashboards or datasets.
> This vulnerability exists in Apache Superset versions up to and including 2.1.2 and versions 3.0.0, 3.0.1.
> 
> Credit:
> 
> Dor Konis ??? GE Vernova (finder)
> 
> References:
> 
> https://superset.apache.org
> https://www.cve.org/CVERecord?id=CVE-2024-23952

Here's the previous report with CVE-2023-46104:

https://www.openwall.com/lists/oss-security/2023/12/19/1

Looks like the only thing that changed is "before 3.0.1" corrected to
"before 3.0.2".

Alexander
