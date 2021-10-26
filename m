X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3375" "Tuesday" "26" "October" "2021" "20:05:36" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "73" "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil "10" nil nil (number mark "U       clopez@igali Oct 26   73/3375  " thread-indent "\"[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10185 invoked by uid 550); 26 Oct 2021 19:06:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10135 invoked from network); 26 Oct 2021 19:06:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=n8302K4z6T6rcdZGbbCEjgz0tlprj692t12zHcRHg3k=;
	b=N8xWjA1zejnGPLxmY+Wb9LfMTiXI1L66fLj6YliydLHVuRc3UKC4EOMkCzFszrpOcIlChajkOHWznXnOPX+u/aZQoQ8Su9WGGazzprzQSv+7ESYrVHQpI6C7gQCyEgds1a48s9W14y7sFrP1VNDlA8Y6UOq2OYHIdD7hSZlhYMRcaq6O6SQls3Q1uEYwpqBImgVSA+bfP241Ic8vGykhUQ2gzN5HOEvbImCzJtDvvIUEaZOnNnmVHlBlhHy3miUjcxRE0zJGBfJ84M0K/8Pwpvny3lNSXG1RbmI6qtOeWdvWXVYX8zeWzcSRN+mr8BVBqOOKOtYLpKo3cOZa4bcBjg==;
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <03eb1900-5593-09ff-8814-008632c46c5c@igalia.com>
Date: Tue, 26 Oct 2021 20:05:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Subject: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006

------------------------------------------------------------------------
WebKitGTK and WPE WebKit Security Advisory                 WSA-2021-0006
------------------------------------------------------------------------

Date reported           : October 26, 2021
Advisory ID             : WSA-2021-0006
WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2021-0006.html
WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2021-0006.html
CVE identifiers         : CVE-2021-30846, CVE-2021-30848,
                          CVE-2021-30849, CVE-2021-30851,
                          CVE-2021-30858, CVE-2021-42762.

Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.

CVE-2021-30846
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to Sergei Glazunov of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed with improved memory handling.

CVE-2021-30848
    Versions affected: WebKitGTK and WPE WebKit before 2.32.4.
    Credit to Sergei Glazunov of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to code
    execution. Description: A memory corruption issue was addressed with
    improved memory handling.

CVE-2021-30849
    Versions affected: WebKitGTK and WPE WebKit before 2.32.4.
    Credit to Sergei Glazunov of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2021-30851
    Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
    Credit to Samuel Groß of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to code
    execution. Description: A memory corruption vulnerability was
    addressed with improved locking.

CVE-2021-30858
    Versions affected: WebKitGTK and WPE WebKit before 2.32.4.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Apple is aware of a report that this issue
    may have been actively exploited. Description: A use after free
    issue was addressed with improved memory management.

CVE-2021-42762
    Versions affected: WebKitGTK and WPE WebKit before 2.34.1.
    Credit to an anonymous reporter.
    BubblewrapLauncher.cpp allows a limited sandbox bypass that allows a
    sandboxed process to trick host processes into thinking the
    sandboxed process is not confined by the sandbox, by abusing VFS
    syscalls that manipulate its filesystem namespace. The impact is
    limited to host services that create UNIX sockets that WebKit mounts
    inside its sandbox, and the sandboxed process remains otherwise
    confined. NOTE: this is similar to CVE-2021-41133.


We recommend updating to the latest stable versions of WebKitGTK and WPE
WebKit. It is the best way to ensure that you are running safe versions
of WebKit. Please check our websites for information about the latest
stable releases.

Further information about WebKitGTK and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK and WPE WebKit team,
October 26, 2021
