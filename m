X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1657" "Tuesday" "9" "June" "2015" "14:39:12" "+0200" "Secure SocketFunneling" "ssf.developer@gmail.com" "<CAGBYo7weL-_SJ4qkR7_P+jE7DYOMJBtSP4mV6X7dKuGBNJnRig@mail.gmail.com>" "37" "[oss-security] Secure Socket Funneling: a new network tool" nil nil nil "6" "2015060912:39:12" "[oss-security] Secure Socket Funneling: a new network tool" (number mark "        ssf.develope Jun  9   37/1657  " thread-indent "\"[oss-security] Secure Socket Funneling: a new network tool\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3531 invoked by uid 550); 9 Jun 2015 12:43:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1419 invoked from network); 9 Jun 2015 12:39:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=lR6kZLhjuo1MWPB9u0w9zH0YQEB9ZECaoqBw7ZLTzJA=;
        b=FYTo2k1ZkXUpqRjlevYfg9huFcErcIP5CEQPLNhTeU+XnM9QHc0gE1yRYvUCy/pHlA
         xO7JFHJo/GaM7pcRJreHKOyFsTsWWtLQjYILNAFm+oHB8LKxYdNeI7krR2gESAQRKV30
         QPmkxw9bGoFRlc9FfISKee+oPgIA+8SHFZkCLFHGbEtT/NJujgZD3dSRNPoIomlRmGeI
         PLesPsALik+NZ5t6EWBpq1FqK1Hy7Fvoaa2bSpOp14ZGzTwS9P5I3U73s9V8bN6s3yWo
         X8nMXNaBT9QwUX1VxHUbknB/dOmAr+f/+SdQs+aZ541MVgGf2+o6tORf8nXzxC1M6grT
         c/LA==
MIME-Version: 1.0
X-Received: by 10.52.165.230 with SMTP id zb6mr41481088vdb.0.1433853552190;
 Tue, 09 Jun 2015 05:39:12 -0700 (PDT)
Message-ID: <CAGBYo7weL-_SJ4qkR7_P+jE7DYOMJBtSP4mV6X7dKuGBNJnRig@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c224d2a368c80518150bcf
Date: Tue, 9 Jun 2015 14:39:12 +0200
From: Secure SocketFunneling <ssf.developer@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Secure Socket Funneling: a new network tool
To: oss-security@lists.openwall.com

--001a11c224d2a368c80518150bcf
Content-Type: text/plain; charset=UTF-8

Secure Socket Funneling (SSF) is a network tool and toolkit.
The main purpose was initially to extend SSH network features and solve
some performance issues we had while using SSH on high bandwidth networks.

Currently, it is difficult to forward DNS, VoIP and other widely used UDP
based protocols. Moreover, we often needed a simple way to relay traffic
over multiple nodes to comply with security policies while administrating
medium size networks.

These are two of the main features of SSF. It allows simple automatic
traffic relay and UDP forwarding through encrypted tunnels. Of course, SSF
also provides basic SSH network features like TCP forwarding and remote
forwarding, SOCKS proxying (and remote proxying which is not provided by
SSH). SSF command line is similar to SSH so that DevOps can benefit from
performance and security enhancements without the learning curve of a new
tool.

To ensure the best performances, SSF takes advantage of the multicore,
multithreaded architectures by using modern asynchronous APIs based on
Boost.asio.

The project provides an easy to use build system which automatically builds
third-party libraries (Boost, OpenSSL and GoogleTest). Moreover, the code
is 100% compatible with C++11 which made it portable over many platforms.
Currently, the build has been tested against Windows, MacOS X and Linux.

SSF is using latest OpenSSL version with perfect forward secrecy enabled by
default.

More information: https://securesocketfunneling.github.io/ssf/

Feel free to fork, review and comment the project.

--001a11c224d2a368c80518150bcf--
