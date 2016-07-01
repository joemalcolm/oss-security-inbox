X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3600" "Friday" "1" "July" "2016" "18:12:46" "-0400" "Sylvain Corlay" "sylvain.corlay@gmail.com" "<CAK=Phk5nKihccv7WS8Wi8x7AbSDU4Osk2-Z=VF-avbCGqQ6TGA@mail.gmail.com>" "105" "[oss-security] CVE Request: ipywidgets executes untrusted JavaScript" nil nil nil "7" "2016070122:12:46" "[oss-security] CVE Request: ipywidgets executes untrusted JavaScript" (number mark "U       sylvain.corl Jul  1  105/3600  " thread-indent "\"[oss-security] CVE Request: ipywidgets executes untrusted JavaScript\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9537 invoked by uid 550); 1 Jul 2016 22:48:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21787 invoked from network); 1 Jul 2016 22:12:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=iPLck+HLB3ct8HOdSJvmU5zp7YJmHFDsHU1Rq0/C90A=;
        b=uBl5MvgHsocLI1r8EG4Xo1v4SKsQDC0mImAAJBf464DsvCKSSVH75065R8dyCWhG8C
         w5fdQg1XJPqYmQ/DAZc7uuNFKOp9y7wJLXH2rzM3xW+216U+x5gXuPUV5qI+QZvgGmAk
         qlQRQtv6rpDznIUAkkT6+8NsUxOqHiD6FA3JsEKMVzdS5OaqP7ISP2DHyRwMBPcBDDrn
         UhhSuTGtxqID303MyZg7YyvZwT0gWj/4FXzseFUIRZjt0goKW8BXOc8ELC7hN0aL86BI
         6Yq/isfNJ8oILVLkt3mjiB+LHHLuF8i5GMJenQyrabwa9gscj5VBVUKTa15dMt9EorOR
         wcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=iPLck+HLB3ct8HOdSJvmU5zp7YJmHFDsHU1Rq0/C90A=;
        b=Mqsm49YhZB3V86cuvF89oPulmBWzUYmSZhiqR4wyrjDkiS/y6dnEwou+g40lLNfkqH
         uVzLE0LdA9YiJ7GN4HhMj4q8CkkvO09u3b6+s4iakTMr29ioouIpU5MMb2zDneJdT5OR
         w22jeNM9DD7juulR+07foDuX8pK4GHZEWGaBfAGK69d72WWr8iVNbzTxWTdX/XZdsFVg
         oT0ddwPbbaEKXjF3isUIVjSCqOitYNtX9rOUYMsTX0txTk/PWZw2PQ5SgI8wSb7VaGSK
         xtGlD+WPcr2sauM4vrl3EaifFddHHRQ1O8z/AvjdxQ9fWLl/WXaArb4rqaV1dDkOZ34R
         1Dew==
X-Gm-Message-State: ALyK8tKBoIFMs8uUNSCSt129fuxgYCFDp5aEkKuX7jnh9EmBkd8BvVD+XVBcEGcMjyuKx55XlICRwUmaM5C67A==
X-Received: by 10.36.84.79 with SMTP id t76mr412053ita.63.1467411167254; Fri,
 01 Jul 2016 15:12:47 -0700 (PDT)
MIME-Version: 1.0
From: Sylvain Corlay <sylvain.corlay@gmail.com>
Date: Fri, 1 Jul 2016 18:12:46 -0400
Message-ID: <CAK=Phk5nKihccv7WS8Wi8x7AbSDU4Osk2-Z=VF-avbCGqQ6TGA@mail.gmail.com>
To: oss-security@lists.openwall.com, Fernando Perez <fperez@lbl.gov>, 
	Matthias Bussonnier <mbussonnier@berkeley.edu>, Jamie Whitacre <whitacre@berkeley.edu>
Content-Type: multipart/alternative; boundary=001a1135293a5d1f2305369a4983
Subject: [oss-security] CVE Request: ipywidgets executes untrusted JavaScript

--001a1135293a5d1f2305369a4983
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

*Description*

ipywidgets version 5.1.5 (and the companion package widgetsnbextension
1.2.3) fixes a security vulnerability which affects the usage of ipywidgets
in conjunction with the Jupyter Notebook. (The GitHub repository for the
project is https://github.com/ipython/ipywidgets)

*Affected versions*

The affected versions of ipywidgets are:

ipywidgets version 5.0.0 =E2=89=A4 V =E2=89=A4 5.1.4 (and widgetsnbextensio=
n < 1.2.3), =E2=80=A6

Only users who installed ipywidgets using pip or from source on the GitHub
repository are affected.

Anaconda users are unaffected because the vulnerable version of ipywidget
has never been released to the default conda channel.

*Resolution*

We recently released ipywidgets version 5.1.5 (widgetsnbextension version
1.2.3). You can check whether your system is affected by running the
following command:

   >>> from distutils.version import LooseVersion as V
   >>> import ipywidgets
   >>> if V('5.0.0') <=3D V(ipywidgets.__version__) < V('5.1.5'):
   >>>     print("Upgrade ipywidgets to 5.1.5")

If your system is vulnerable, you will see the following output:

    Upgrade ipywidgets to 5.1.5

If your system is vulnerable please upgrade to ipywidgets version 5.1.5.
Use the following command to install:

   $ pip install "ipywidgets>=3D5.1.5"

or

   $ conda install "ipywidgets>=3D5.1.5"

*Technical details*

The vulnerability was discovered following an investigation of a potential
vulnerability reported by Brian Granger to the ipython-security mailing
list (security@ipython.org) on May 5.

The reason for such behavior was determined on May 5 by Matthias Bussonnier.

A fix was proposed written and reviewed, then [merged](
https://github.com/ipython/ipywidgets/pull/591) into the development branch
on May 20, and a non vulnerable version released on May 25.

A widget snapshotting feature introduced in ipywidgets 5.0.0 (
https://github.com/ipython/ipywidgets/pull/314/) allowed untrusted
javascript code to execute in an untrusted notebook on loading and saving
of a notebook.  A well crafted notebook could execute arbitrary code with
the rights of the current user in the context of the page, the notebook
server, and available kernels.

We recommend immediate upgrade of the ipywidgets package.

There is no simple configuration option that could mitigate the system for
vulnerability. The user must upgrade to ipywidget version 5.1.5 or
downgrade to 4.x.

*Future Plan*

The security issue resulted from the seemingly harmless combination of
calls:

    json =3D cell.get_json()
    json =3D update_json(json)
    cell.clear_output()
    cell.from_json()

The clear_output()  method has as a consequence to mark the cell as trusted
(as it has no output that can potentially execute javascript). This is
followed by the next call which can trigger JavaScript execution in the
page context.

We plan on improving the notebook API so that clear_output() does not
change the trusted status of a cell (or a notebook), to prevent mistakes
like this from having security consequences. This will lead to the slight
behavior change that an empty cell with no output can be untrusted.

We learned that we are not completely ready for fast release of security
fixes. The time from vulnerability discovery to available fix, release, and
announcement can and should be shorter.

We encourage users who find possible security issues to notify
security@ipython.org.

Thanks!

The Jupyter team

--001a1135293a5d1f2305369a4983--
