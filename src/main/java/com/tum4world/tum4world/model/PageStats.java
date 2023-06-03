package com.tum4world.tum4world.model;

import java.time.LocalDateTime;

public class PageStats {

    private String page;

    private Integer viewCount;

    private LocalDateTime createdTs;

    public PageStats(String page, Integer viewCount, LocalDateTime createdTs) {
        this.page = page;
        this.viewCount = viewCount;
        this.createdTs = createdTs;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public Integer getViewCount() {
        return viewCount;
    }

    public void setViewCount(Integer viewCount) {
        this.viewCount = viewCount;
    }

    public LocalDateTime getCreatedTs() {
        return createdTs;
    }

    public void setCreatedTs(LocalDateTime createdTs) {
        this.createdTs = createdTs;
    }
}
