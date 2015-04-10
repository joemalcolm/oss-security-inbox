X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["933" "Friday" "10" "April" "2015" "11:29:14" "+1000" "Shubham Shah" "admin@shubh.am" "<CAG8UnYPgP+J9KvtXCEv+2JdRx5OTC0D=Ehg1VR6cy7nOre6G7w@mail.gmail.com>" "28" "[oss-security] CVE request - NodeBB Persistent XSS through Markdown" nil nil nil "4" "2015041001:29:14" "[oss-security] CVE request - NodeBB Persistent XSS through Markdown" (number mark "        admin@shubh. Apr 10   28/933   " thread-indent "\"[oss-security] CVE request - NodeBB Persistent XSS through Markdown\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3315 invoked by uid 550); 10 Apr 2015 05:00:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28558 invoked from network); 10 Apr 2015 01:29:25 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=YtYchkunIBUzBpwhLLx9H3cILH+KzO+DtbT+h2a9Hz8=;
        b=fC4YZ6XrbBEMuxNmNhga4DU5JVCmJAEbpo5FqpCSRTTSe4/uOzyIsu7MEGmN6+LJdy
         5KBGx/im6J7Qn9/ezUrcsA8nB2tjO9T1wbkNb8/Tap8893nNzkHU4vc44d+Szvnxc9EL
         hJkZ/21SgSSOQwPh2Q/ChZUxWnbz7m0KFUzOTc/DO2bVc/DUTD5pZaxnnGGJXCsPeAC1
         Jlrm4PmwKWGoLazENx/7rQC9jLLCtA4ebHeP5w2tXPn58h08YtJHSt9Bl+ErqKMuZBVs
         IY9wWI34kNcHKA0HSDA7oZaSvYAiIKNfTlphDcQr31TbN4lZwnq9jpk/lpxdLxFfaHrR
         juwA==
X-Gm-Message-State: ALoCoQmU+ofOvDEJDy+1LuahzgCIIo6XkbLf/p3xKzc2mGKV8y/oB0NxbmH7NEjGgo1u/dAyHHk+
MIME-Version: 1.0
X-Received: by 10.180.73.111 with SMTP id k15mr502081wiv.34.1428629354684;
 Thu, 09 Apr 2015 18:29:14 -0700 (PDT)
X-Originating-IP: [122.107.120.72]
Message-ID: <CAG8UnYPgP+J9KvtXCEv+2JdRx5OTC0D=Ehg1VR6cy7nOre6G7w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d043894af33b539051354b19e
Date: Fri, 10 Apr 2015 11:29:14 +1000
From: Shubham Shah <admin@shubh.am>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - NodeBB Persistent XSS through Markdown
To: oss-security@lists.openwall.com

--f46d043894af33b539051354b19e
Content-Type: text/plain; charset=UTF-8

Hi,

Could I please get a CVE for a Persistent XSS flaw found in NodeBB versions
< 0.70. The Github repository for this project can be found here:
https://github.com/NodeBB/NodeBB.

The vulnerability allows for an attacker to insert malicious links within
forum posts and threads - that lead to the execution of attacker-defined
JavaScript on click. This vulnerability not only affects NodeBB but also
affects any project which uses the markdown-it project before 4.1.0.

The commits leading to the fix for this flaw can be found here:

NodeBB -
https://github.com/julianlam/nodebb-plugin-markdown/commit/ab7f2684750882f7baefbfa31db8d5aac71e6ec3

Markdown-it -
https://github.com/markdown-it/markdown-it/commit/f76d3beb46abd121892a2e2e5c78376354c214e3

If any more details are required, please let me know.

Thank you,
Shubham

--f46d043894af33b539051354b19e--
