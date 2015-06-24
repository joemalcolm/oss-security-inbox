X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1256" "Thursday" "25" "June" "2015" "01:04:32" "+0200" "Damien Regad" "dregad@mantisbt.org" "<mmfd21$39r$1@ger.gmane.org>" "51" "[oss-security] CVE Request: Information disclosure in MantisBT" nil nil nil "6" "2015062423:04:32" "[oss-security] CVE Request: Information disclosure in MantisBT" (number mark "U       dregad@manti Jun 25   51/1256  " thread-indent "\"[oss-security] CVE Request: Information disclosure in MantisBT\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4071 invoked by uid 550); 24 Jun 2015 23:04:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4045 invoked from network); 24 Jun 2015 23:04:55 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Date: Thu, 25 Jun 2015 01:04:32 +0200
Message-ID: <mmfd21$39r$1@ger.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 201.56.193.178.dynamic.wline.res.cust.swisscom.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
Subject: [oss-security] CVE Request: Information disclosure in MantisBT

Greetings,

Please assign a CVE ID for the following issue.


Description:

In MantisBT, the "Project Documentation" feature can be used to attach 
files to a project.

When this feature is enabled ($g_enable_project_documentation = ON) and 
the threshold to view these files is left to its default value 
($g_view_proj_doc_threshold = ANYBODY), any registered user in the 
system can download every such attachment, including those which are 
linked to private projects to which the user does not have access.

This can be achieved by calling the download script directly, and 
specifying the ID of the file to download, e.g.

http://example.com/mantis/file_download.php?file_id=123&type=doc


Affected versions:
- <= 1.2.19
- <= 1.3.0-beta.2

Fixed in versions:
- 1.2.20 (not yet released)
- 1.3.0-rc1 (not yet released)

Patch:
See Github [1]

Credits:
The issue was discovered by Werner Karl and fixed by Damien Regad
(MantisBT Developer).

References:
Further details available in our issue tracker [2]


Best regards,
D. Regad
MantisBT Developer
http://www.mantisbt.org


[1] http://github.com/mantisbt/mantisbt/commit/f39cf525 (1.2.x)
     http://github.com/mantisbt/mantisbt/commit/a4be76d6 (1.3.x)
[2] https://mantisbt.org/bugs/view.php?id=19873

