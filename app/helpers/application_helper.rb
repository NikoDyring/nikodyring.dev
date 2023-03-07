module ApplicationHelper
  def active_nav_link(path)
    if current_page?(path)
      'text-sky-500 w-full h-6 flex items-center justify-center relative after:absolute after:w-0.5 after:right-0 after:top-0 after:bottom-0 after:bg-sky-500'
    else
      'text-slate-400 hover:text-slate-500 dark:text-slate-500 dark:hover:text-slate-400 w-full h-6 flex items-center justify-center'
    end
  end

  def active_locale_icon(locale)
    case locale
    when :en
      asset_path('da.svg')
    else
      asset_path('en.svg')
    end
  end

  def swap_locale(locale)
    case locale
    when :da
      I18n.locale = :en
    else
      I18n.locale = :da
    end
  end
end
