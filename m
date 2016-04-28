X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/28/4
Message-ID: <CACn5sdQuKknmR6bZHKM2-G0Yb+P7hnJe7NkdRQkFthMpN5thpw@mail.gmail.com>
Date: Thu, 28 Apr 2016 10:33:02 +0200
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE requests: DoS in librsvg parsing SVGs with circular definitions
Content-Type: text/plain; charset=utf-8

Hello,

Two DoS in librsvg 2.40.2 parsing SVGs with circular definitions were found
(they will produce stack exhaustion). Other versions can be vulnerable too.
They affect the following functions:

* rsvg_cairo_pop_discrete_layer - rsvg_cairo_pop_render_stack -
rsvg_cairo_generate_mask: reproducible using circular-1.svg
* _rsvg_css_normalize_font_size: reproducible using circular-2.svg

Both reproducers are attached in a tar.gz to avoid a crash in my own
browser.  Fortunately, these issues are solved in the last git revision of
librsvg2.

Regards,
Gustavo.

Content of type "text/html" skipped

Download attachment "circulars.tar.gz" of type "application/x-gzip" (1511 bytes)
