X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1363" "Thursday" "23" "August" "2018" "04:36:05" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20180823113605.GA3397@localhost.localdomain>" "37" "Re: [oss-security] OpenSSH Username Enumeration" "^Cc:" nil nil "8" "2018082311:36:05" "[oss-security] OpenSSH Username Enumeration" (number mark "        qsa@qualys.c Aug 23   37/1363  " thread-indent "\"Re: [oss-security] OpenSSH Username Enumeration\"\n") "<b175ea89-96b7-8645-4d82-1d8be96fc78e@securitum.pl>" ("<20180815160558.GA23020@localhost.localdomain>" "<20180817183154.GA18661@eldamar.local>" "<b175ea89-96b7-8645-4d82-1d8be96fc78e@securitum.pl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23978 invoked by uid 550); 23 Aug 2018 11:41:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23923 invoked from network); 23 Aug 2018 11:41:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LblCda7QOv8RtU4BvdFIN4/SLEUzJpTvXaRBVnJdH6E=;
        b=cLMu1IrTSJM8MBixAOd9/5vTevCwBR87QSE4YBsiA26+a4+aGt0zq8zPDgBY11N9m/
         z6vv/tRtUrNM79urqdHu4qRLTijZqWGZ3mPcah0Zpyk579xeY12FqJxZLWaBsZ0bR+P7
         un95DmrBkeqvjjhqxXtQCRzmpsf+Fe/dGRvjXPHTvkrMnitwt47pq+4CyFsgmhVQs71l
         b4GJ8OQh6cMHm3V+8bgCJ8xVlT5R+w7AI7BsZufR0jbAPGVcClgOB6epQPaCzz20ms7S
         No2C77fYeJvhhaPK9xpp/zJJIGmaxKkDdfKQAWj5+YRo+ZVcnKlhSJp7B95Hsi0Eo1Ji
         vkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LblCda7QOv8RtU4BvdFIN4/SLEUzJpTvXaRBVnJdH6E=;
        b=h94hu8jSBjjd4cRJN7JgWuXbc5A4dH3HBdqtIkeTzNLZ7jjmT+X7g77BFsXDFv3OJU
         PhZ8NV8BNyUPj9vzWexlGmM027UNrRYq/8z/8aD92jDt1dyGbVoc43Ilnpnte4RyOwXg
         tqx3DZkPd1jEPOxLHmpVh/U+FA2n1Jk3ia3H1PcO2rkVHXXEZe3tyqwkMPbq1NILGeqK
         x75WN7YIS1CN51fvbY30w/1CRJBKBL7/8S5HT3GU2ZU3sOcbcSqDJtbEseTJdnv1v882
         CkJYhpKe6Iut4kfOUh/34+xVVLQ//0Ujqha+nGYPgTMMFZj/V6T60G26j7O8TOzqVH9F
         taTQ==
X-Gm-Message-State: AOUpUlF68YnSQ2ufOSmmJdbzbRjEF++trMlc+RIL4xwxLIgSBgWs3lrD
	JNsvjjzsrwAsV4C2ZEJDpXAdHs2SQ/8tCg==
X-Google-Smtp-Source: AA+uWPwQPq5H+VH+RNkQVF0DJrutvaxAMMuKv/1oQul/u+mrV8TgRopUT7f4LkUGEUTT0YU98tLdLw==
X-Received: by 2002:a63:e647:: with SMTP id p7-v6mr54232178pgj.218.1535024458697;
        Thu, 23 Aug 2018 04:40:58 -0700 (PDT)
Message-ID: <20180823113605.GA3397@localhost.localdomain>
References: <20180815160558.GA23020@localhost.localdomain>
 <20180817183154.GA18661@eldamar.local>
 <b175ea89-96b7-8645-4d82-1d8be96fc78e@securitum.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b175ea89-96b7-8645-4d82-1d8be96fc78e@securitum.pl>
Cc: Dariusz Tytko <dariusz.tytko@securitum.pl>
Date: Thu, 23 Aug 2018 04:36:05 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSH Username Enumeration
To: oss-security@lists.openwall.com

Hi all,

On Thu, Aug 23, 2018 at 09:50:08AM +0200, Dariusz Tytko wrote:
> We have published our writeup
> https://sekurak.pl/openssh-users-enumeration-cve-2018-15473/

Great job, and thank you very much for reporting this to the OpenSSH
team in the first place!

Here is our (rough) timeline:

- On July 31,
  https://github.com/openbsd/src/commit/779974d35b4859c07bc3cb8a12c74b43b0a7d1e0
  is committed publicly, but does not explain the reasons for this
  change, and does not flag it as a security fix.

- We read this commit about two weeks later, and realize its security
  implications; we do not know whether distros@vs.openwall.org have been
  contacted about this or not.

- We therefore send our findings to openssh@openssh.com and
  distros@vs.openwall.org, on August 15.

- About 20 minutes later (!), Solar Designer confirms that we should
  post this to oss-security@lists.openwall.com right away (as per
  https://oss-security.openwall.org/wiki/mailing-lists/distros): indeed,
  the issue is already public (if we spotted this commit, then others
  did, too).

- About one hour later, we post our findings to oss-security.

Again, we thank Dariusz Tytko for reporting this issue,
distros@vs.openwall.org for their quick response, and the OpenSSH team
for all their hard and inspiring work. With best regards,

-- 
the Qualys Security Advisory team
