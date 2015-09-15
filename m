X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["713" "Tuesday" "15" "September" "2015" "18:03:57" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150915180357.7a0097a4@redhat.com>" "25" "Re: [oss-security] Heap overflow and DoS in unzip 6.0" nil nil nil "9" "2015091516:03:57" "[oss-security] Heap overflow and DoS in unzip 6.0" (number mark "        scorneli@red Sep 15   25/713   " thread-indent "\"Re: [oss-security] Heap overflow and DoS in unzip 6.0\"\n") "<CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>" ("<CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30176 invoked by uid 550); 15 Sep 2015 16:04:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30152 invoked from network); 15 Sep 2015 16:04:15 -0000
Message-ID: <20150915180357.7a0097a4@redhat.com>
In-Reply-To: <CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>
References: <CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: cve-assign@mitre.org
Date: Tue, 15 Sep 2015 18:03:57 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heap overflow and DoS in unzip 6.0
To: oss-security@lists.openwall.com

On Mon, 7 Sep 2015 08:57:20 -0300
Gustavo Grieco <gustavo.grieco@gmail.com> wrote:

> Hello,
> 
> Two issues were found in unzip 6.0:
> 
> * A heap overflow triggered by unzipping a file with password (e.g
> unzip -p -P x sigsegv.zip)
> * A denegation of service with a file that never finishes unzipping
> (e.g. unzip sigxcpu.zip).
> 
> Upstream is notified. Nevertheless the test cases as well as the
> valgrind and the adress sanitizer reports of the heap overflow case
> are attached (as a single file) in case someone wants to provide some
> feedback. These issues were found with QuickFuzz.
> 
> Regards,
> Gustavo.

Can CVEs be assigned?

Thanks in advance,
-- 
Stefan Cornelius / Red Hat Product Security
