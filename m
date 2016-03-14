X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["739" "Monday" "14" "March" "2016" "13:26:52" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20160314132652.4530b528@redhat.com>" "22" "Re: [oss-security] CVE-Request - GNU Awk." "^Cc:" nil nil "3" "2016031412:26:52" "[oss-security] CVE-Request - GNU Awk." (number mark "        thoger@redha Mar 14   22/739   " thread-indent "\"Re: [oss-security] CVE-Request - GNU Awk.\"\n") "<20160314063228.GA12829@steve.org.uk>" ("<20160314063228.GA12829@steve.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9958 invoked by uid 550); 14 Mar 2016 12:27:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9940 invoked from network); 14 Mar 2016 12:27:10 -0000
Message-ID: <20160314132652.4530b528@redhat.com>
In-Reply-To: <20160314063228.GA12829@steve.org.uk>
References: <20160314063228.GA12829@steve.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: oss-security@lists.openwall.com
Date: Mon, 14 Mar 2016 13:26:52 +0100
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request - GNU Awk.
To: Steve Kemp <steve@steve.org.uk>

On Mon, 14 Mar 2016 06:32:28 +0000 Steve Kemp wrote:

>   I reported two DoS bugs against GNU Awk to the debian
>  bug tracker recently, both of which are denial of service
>  attacks causing NULL-pointer deferences.
> 
>   It would be useful to have a CVE identifiers assigned.

Why should these get a CVE?  As you state in one of your reports:

  While I appreciate that passing untrusted code to gawk is not a
  common thing to do, I do not believe that it should be possible to
  trigger a segfault though.

Why should that be considered a valid / safe use case at all?  If
something makes awk run untrusted programs, there's code execution
problem already:

  echo | awk '{ system("id") }'

-- 
Tomas Hoger / Red Hat Product Security
