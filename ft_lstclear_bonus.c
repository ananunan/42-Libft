/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear_bonus.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aeberius <aeberius@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/27 16:20:31 by aeberius          #+#    #+#             */
/*   Updated: 2024/04/27 16:38:21 by aeberius         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void*))
{
	t_list	*current_node;

	current_node = *lst;

	while (current_node != NULL)
	{
		lst = current_node->next;
		(*del)(current_node->content);
		free(current_node);
		current_node = lst;
	}
	*lst = NULL;
}
