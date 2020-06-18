module Elegans

export import_coords, import_and_calc, loadstages, stage_names,
       VideoCache, get_frame, nframes, video_index,
       mark_stages_gui, mark_stages_window, frames_per_s,
       raw_worm_contours, worm_contour, curvature,
       Thresholding, SeededSegmentation,
       incurve, cutline, joincurves,
       Closed2DCurve, n_highest_peaks_circular,
       contour_cache, init_contours,
       midline_by_thinning, line2spline, resample_spline, spline_anglevec,
       anglevec_by_thinning, midline_cache, spline_cache, points,
       ends_alignment_mask, align_ends!, find_end_indices,
       contour2splines, aligned_splines,
       forward_speed, speed_heatmap, speed_heatmap_data, speed_heatmap_plot,
       log_speed_ratios,
       # TODO move to a new packge?
       try_return, passex, missex

include("utils.jl")
include("mark_stages.jl")
include("contour.jl")
include("segment_contour.jl")
include("midline.jl")
include("shape.jl")
include("peaks.jl")
include("videocache.jl")
include("caching.jl")
include("headtail/forward.jl")
include("headtail/lsr.jl")
include("headtail/traj_stats.jl")

end # module
