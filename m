X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2943" "Monday" "12" "October" "2015" "10:34:06" "-0500" "Blake Burkhart" "bburky@bburky.com" "<CAP3OtXh29NEH24uO3hKyaLO9SxT-sxOTU-Yc3ksyQXjr+7YB1w@mail.gmail.com>" "72" "[oss-security] Re: CVE Request: git" nil nil nil "10" "2015101215:34:06" "[oss-security] Re: CVE Request: git" (number mark "        bburky@bburk Oct 12   72/2943  " thread-indent "\"[oss-security] Re: CVE Request: git\"\n") "<20151006035647.GG16643@hunt>" ("<20151006035647.GG16643@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22514 invoked by uid 550); 12 Oct 2015 15:47:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14061 invoked from network); 12 Oct 2015 15:34:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bburky.com; s=google;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=pdrMDsgw4190b5NSeBB2n0MJt2OwYxm79q+zR3z9yhQ=;
        b=BhquQmRHPQqU8AcYaFyltf53yTAikankGFmFv8BIRtvb9YlWwKilsJLO9lhx7boil5
         R3+lTlYzRChHF+T3Q63HpRZL2RpAhfjoCnqfu6wIyAnNoPlijQRcAo4/ubofbdwXMzHO
         XESu1/aq2KqVxjcl4LGK7YpfGwLBxxWYsxM4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=pdrMDsgw4190b5NSeBB2n0MJt2OwYxm79q+zR3z9yhQ=;
        b=F+YbPwVhL1lL2pPV4bmcFtH+t+zgE/ooDfUESz4wFgEfWoHlzZXBY4OBWxKdEnfRCN
         hCq71voDjVHZwAxuS8JA1ydMipiaQxvyzFsWz/4QJy9QDa2IWt5AzGJupUE8gE7DFOM+
         rLEEkAhbWx1PIEDi8AdA5cSEUxB6eHY9KrTxhxaLLakH3mNsPaaI2JjT561ew7fM485r
         bSEpzQ1HR0u58s+4HSCaKIgqfDZKbKpSCLDcNWDMdF3Pz4HxM2qgbCTDpU/nsLEFNTPP
         8/2GhhXWK4WSm3KBo75N2vHFbHnju8THtlzMIPEEtoQJ0yJu/SPXg/Q4g/41SgCdfONK
         wiug==
X-Gm-Message-State: ALoCoQkxYvlikHFNuglGTKum5lXi9ZX6iBD6xrurGLOotHWEFKNbJjX50uanzRiVUvYLYiIOL/Tw
MIME-Version: 1.0
X-Received: by 10.60.175.41 with SMTP id bx9mr16045910oec.46.1444664046158;
 Mon, 12 Oct 2015 08:34:06 -0700 (PDT)
In-Reply-To: <20151006035647.GG16643@hunt>
References: <20151006035647.GG16643@hunt>
Message-ID: <CAP3OtXh29NEH24uO3hKyaLO9SxT-sxOTU-Yc3ksyQXjr+7YB1w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bd6ab644aa3160521ea0fab
Date: Mon, 12 Oct 2015 10:34:06 -0500
From: Blake Burkhart <bburky@bburky.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: git
To: Seth Arnold <seth.arnold@canonical.com>, oss-security@lists.openwall.com

--047d7bd6ab644aa3160521ea0fab
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 5, 2015 at 10:56 PM, Seth Arnold wrote:
> The git project announced v2.6.1 https://lkml.org/lkml/2015/10/5/683
> and included the following text:
>
> * Some protocols (like git-remote-ext) can execute arbitrary code
> found in the URL. The URLs that submodules use may come
> from arbitrary sources (e.g., .gitmodules files in a remote
> repository), and can hurt those who blindly enable recursive
> fetch. Restrict the allowed protocols to well known and
> safe ones.

Thanks for sending this to oss-security. I discovered this vulnerability in
git and helped get it fixed. I have included some further details on the
fixed vulnerabilities.

Arbitrary shell command execution from .gitmodules:

Git allows executing arbitrary shell commands using git-remote-ext via a
remote URLs. Normally git never requests URLs that the user doesn't
specifically request, so this is not a serious security concern. However,
submodules did allow the remote repository to specify what URL to clone
from.

If an attacker can instruct a user to run a recursive clone from a
repository they control, they can get a client to run an arbitrary shell
command. Alternately, if an attacker can MITM an unencrypted git clone,
they could exploit this. The ext command will be run if the repository is
recursively cloned or if submodules are updated. This attack works when
cloning both local and remote repositories.

a5adace and 33cfccb fixed this behavior by introducing a whitelist of
allowed protocols for all git submodule operations.

Following HTTP redirects to unsupported protocols:

A separate issue that was fixed used to allow HTTP redirects to be followed
to any protocol that the underlying libcurl supported. This is the default
behavior of libcurl. However, git should only support a subset of the
protocols that libcurl supports. For example, this allowed a git clone from
an HTTP server to redirect to an SFTP server and successfully run a clone,
a protocol that git otherwise doesn't support at all. Git is only supposed
to support using HTTP, HTTPS, FTP and FTPS with the libcurl-based remotes,
so this was unexpected behavior.

5088d3b and f4113ca fixed this behavior by limiting libcurl-based remotes
to redirect to HTTP, HTTPS, FTP and FTPS, or the protocol whitelist,
whichever is stricter.

Circular HTTP redirects:

Previously git would follow circular HTTP redirects forever. Potentially
this could be used as a DoS attack if an attacker could trigger an
automated fetch of a git remote.

b258116 fixed this behavior by limiting git to only follow 20 HTTP
redirects.

> The announcement also mentions some int-based overflows but does not
> describe any situations that would allow crossing privilege boundaries.

Jeff King would have the full details on this. I was not involved with this.

-- 
Blake Burkhart

-- 
Blake

--047d7bd6ab644aa3160521ea0fab--
