module ApplicationHelper
  def default_meta_tags
    {
      site: 'Hoopsfix.com/live',
      title: 'Hoopsfix Live | British Basketball Live Streams',
      reverse: true,
      separator: '-',
      description: 'Watch British basketball live with our live stream directory of BBL, WBBL, NBL, WNBL & more.',
      keywords: 'bbl live, british basketball live, nbl live, wbbl live, wnbl live',
      canonical: request.original_url,
      noindex: !Rails.env.production?,
      icon: [
        { href: image_url('favicon.png') },
        { href: image_url('hoopsfix-touch-icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'Hoopsfix.com/live',
        title: 'Hoopsfix Live | British Basketball Live Streams',
        description: 'Watch British basketball live with our live stream directory of BBL, WBBL, NBL, WNBL & more.',
        type: 'website',
        url: request.original_url,
        image: image_url('hoopsfix-live-meta-image.png')
      }
    }
  end
end
